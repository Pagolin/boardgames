#include <unistd.h>
#include <cstring>
#include <cassert>

#include <iostream>
#include <algorithm>


const int FD_IN  = 3; // [BW]:[bBwW-]32\n
const int FD_OUT = 4; // [0-9][0-9]?([-x][0-9][0-9]?)+
const int BUFFERSIZE_IN  = 35;
const int BUFFERSIZE_OUT = 39; // ist 4 zeichen größer, weil der gewählte Zug hinzu kommt
const int BUFFERSIZE = std::max(BUFFERSIZE_IN,BUFFERSIZE_OUT);

template <typename... ARGS>
static void error (const char * fmt, const ARGS& ... arg)
{
    fprintf (stderr, fmt, arg...);
    exit (-1);
}

enum Field { //one black field on the board
    NONE  = 0,
    BLACK = 1,
    WHITE = 2,
    KING  = 4,
    BLACKKING = BLACK | KING, // BLACK | KING = 0001 | 0100 = 0100 = 5
    WHITEKING = WHITE | KING, // WHITE | KING = 0010 | 0100 = 0110 = 6
};
/**********************
class Board
**********************/
class Board
{
    public:
        Field field[64]; //an 8x8 game board

        Board() { from_string ("bbbbbbbbbbbb--------wwwwwwwwwwww"); } 	// construktor from fix string: field status written from upper left to lower right)

        Board (Board const & b) { memcpy (&field, &b.field, sizeof(field)); } //constructor copying the field of another board (&b.field) into &field of current board

        Board (char const* s) { from_string(s); } //constructor from mcp input

        void from_string (char const * const s); //string -> field

        void to_string (char * s);//field -> string

        void draw(); //ASCII art
};

void Board::from_string (char const * s)
{
    assert (strlen(s) == 32);

    int i = 0;
    while (s[i]) {
        Field f = NONE;
        switch (s[i]) {
            case 'b' : f = BLACK; break;
            case 'w' : f = WHITE; break;
            case 'B' : f = BLACKKING; break;
            case 'W' : f = WHITEKING; break;
            case '-' : f = NONE; break;
            default : error ("unknown char '%c' in input string\n", s[i]);
        }
        int j = (i / 4) & 1;
        field[2*i-j+1] = f;
        field[2*i+j] = NONE;
        i++;
    }
}

void Board::to_string (char * s)
{
    for (int i=0; i<32; i++) {
        int j = (i / 4) & 1;
        switch (field[2*i-j+1]) {
            case BLACK:     s[i] = 'b'; break;
            case WHITE:     s[i] = 'w'; break;
            case BLACKKING: s[i] = 'B'; break;
            case WHITEKING: s[i] = 'W'; break;
            case NONE:      s[i] = '-'; break;
            default:        assert (0);
        }
        s[32] = 0;
    }
}

void Board::draw()
{
    for (int i=0; i<64; i++) {
        if ((i & 7) == 0)
            std::cout << "+----+----+----+----+----+----+----+----+" << std::endl;
        char c = ' ';
        if (field[i] & BLACK) c = 'b';
        if (field[i] & WHITE) c = 'w';
        if (field[i] & KING)  c -= 32; //-32 equals in UTF8 b or w as capitals

        if (((i & 8) && (i & 1)) || (!(i & 8) && !(i & 1))) {
            printf ("|    ");
        } else {
            printf("|%c %2d",c,(i/2)+1);
        }

        if ((i & 7) == 7)
            printf ("|\n");
    }
    std::cout << "+----+----+----+----+----+----+----+----+" << std::endl;
}
/*************
My types and global vars
**************/
typedef struct move* Moves;
typedef struct move{
	int sequence[13] ; //stores the Sequence of field-indices, Max jump over 12 oponents-> pos + 12 = 13
	int len;
	int weight;
	Moves next;
}move;

typedef struct token{
	char type; // n C
	int pos; // initial field index
	Moves possibleMoves;
}token;

typedef struct token Tokens[12];

typedef struct player{
	Field color;
	int dir, left, right, bound;
	int oponent;
}player;

Tokens myTokens; //
player* cP;
Field currentField[64];
int out[13];

/*********
Given functions
**********/

void input (char* buffer)
{
    char* end = buffer + BUFFERSIZE_IN;
    while (buffer < end) {
        int bytes_read = read (FD_IN, buffer, end - buffer);
        if (bytes_read < 0) error ("error reading FD_IN\n");
        buffer += bytes_read;
    }
    end--;
    if (*end != '\n') error ("line does not end with newline\n");
    *end = 0;
}

void output ()
{
    char str[39];
    //char buffer[32];

    if(abs(out[1]  - out[0]) < 6 ) {
        printf("\nStep %d %d\n", out[0], out[1]);
        std::cout << str << "\n";
        snprintf(str, sizeof(str), "%d-%d\n", out[0], out[1]);
        //sprintf(str, "%d-%d\n", out[0], out[1]);
    }
    else {
        printf("\nJump\n");
        for(int i = 0; i < 13; i++)
        {
            printf("%d ", out[i]);
        }
        std::cout << str << "\n";
        sprintf(str, "%d", out[0]);
        int stelle;
        if(out[0] < 10)
            stelle = 1;
        else
            stelle = 2;
        for (int i = 1 ; i < 13 ; i++)
        {
            if(out[i]==0) {
                sprintf(str+stelle,"\n");
                break;
            }
            sprintf(str+stelle,"x%d", out[i]);
            if(out[i] < 10)
                stelle = stelle + 2;
            else
                stelle = stelle + 3;
        }
    }
    printf("\n OutSeq: %s\n", str);
    int l = strlen(str);
    if (str[l-1] != '\n') {
        std::cerr << "too long, had to cut." << std::endl;
        str[l-1] = '\n';
    }
    if (write (FD_OUT, str, l) != l) error ("error writing FD_OUT\n");
}

/**************************************
My functions
Declaration
***************************************/
//Schnittstellen und Manager
Field getPlayer(char* buffer);
void startThinking(const Field* field, Field player);
void think(const Field* field, Field player);

//Finden und Auflisten von Zügen
void listMoves(int TNr, int pos, int swapped, int jumped);
int look(int pos, int hand);
void addStep(Moves lastMove, int TNr, int step);
void addJump(Moves last,int TNr, int pos, int jump, int swapped);

//Auswählen von Zügen
Moves selectMove();

//tools
int to32(int pos); // Konvertiert Positionen vom array[64] zu Positionen im array[32]
void swapDir(int* d, int* l, int*r, int *b);
char* StepToString(int Sequence[]);
char* JumpToString(int Sequence[]);

/**************************************
My functions
Implementation
***************************************/
Field getPlayer(char* buffer)
{
    Field p = NONE;
    char c = buffer[0];
        switch (c) {
            case 'B' : p = BLACK; break;
            case 'W' : p = WHITE; break;
            default : error ("unknown char '%c' in input string\n", c);
        }
    return p;
}

void startThinking(const Field* field, Field player)
{
   think(field, player);
   //strcpy(dec, think(field, player));
}


void think(const Field* Fp, Field color) {
	int i, j = 0;
	char type;
	Moves outMove;
	//TODO: Move initializing player to think
	int op = 3- color;
	cP = (player*)malloc(sizeof(player));
	*cP = (player){color, 1, 7, 9, 63, op};
	if(color&2) *cP = (player){color, -1, -9, -7, 0, op};
	for(i = 0; i < 64; i++) currentField[i] = Fp[i]; //TODO: Evaluate wether ownfield copy is necessary
	for(i = 0; i < 64; i++) {
		if (Fp[i] & color) {
			myTokens[j].pos = i;
			myTokens[j].possibleMoves = NULL;
			if (Fp[i] & KING) type = 'C';
			else type = 'n';
			myTokens[j].type = type;
			printf("Token Nr %d at %d\n", j, (i/2)+1);
			j++;
		}
    }
    // seach for and list valid moves for tokens
    for(int i = 0; i< 12; i++) {
        if(myTokens[i].pos == 0) continue;
		listMoves(i, myTokens[i].pos, 0,0);
    }
    outMove = selectMove();
    for(int i = 0; i < 13; i++) {
        out[i] = outMove->sequence[i];
    }
    return;
}

// cP, der gegenwärtige Spieler hält die werte left und right die zur Position des Tokens addiert werden
// um die Felder schräg links und rechts zu erreichen
// Die Prüfung ob dieses Feld frei, besetzt oder vom Gegner besetzt ist wird von look() übernommen
// ggF werden für die entsprechende Richtung einfache Züge (addStep()) oder Sprünge (addJump()) hinzugefügt

void listMoves(int TNr, int pos , int swapped, int jumped) {
    int ad;
	if(pos % 8 == 0) { //Token at left border
		ad = look(pos, cP->right);
	}
	else if(pos % 8 == 7){ //Token at right border
		ad = look(pos, cP->left);
	}
	else{
		ad = look(pos, cP->left) + look(pos, cP->right);
	}
	if(abs(ad)> 10) ad -= ad % 10; //
	switch(abs(ad)) {
        case 7:     if(!jumped) addStep(myTokens[TNr].possibleMoves,TNr, ad); break; // using ad instead of left right since 7 = left but -7 = right;
        case 9:     if(!jumped) addStep(myTokens[TNr].possibleMoves,TNr, ad); break;
        case 10:    if(!jumped) {   addStep(myTokens[TNr].possibleMoves,TNr, cP->left);
                                    addStep(myTokens[TNr].possibleMoves,TNr, cP->right);} break;
        case 70:    addJump(myTokens[TNr].possibleMoves, TNr, pos, ad/10, swapped); break;
        case 90:    addJump(myTokens[TNr].possibleMoves, TNr, pos, ad/10, swapped); break;
        case 160:   addJump(myTokens[TNr].possibleMoves, TNr, pos, cP->left, swapped);
                    addJump(myTokens[TNr].possibleMoves, TNr, pos, cP->right, swapped); break;
        default: printf("No Moves found\n"); break;
    }
    if(swapped == 1) {
        swapDir(&(cP->dir), &(cP->left), &(cP->right), &(cP->bound)); return;
    }
    // case Token is a checker, search also in oposit direction
	if(myTokens[TNr].type == 'C') {
        swapDir(&(cP->dir), &(cP->left), &(cP->right), &(cP->bound));
		swapped = 1;
		listMoves(TNr, pos, 1, jumped);
	}
	return;
}

int look(int pos, int hand) { //TODO: Add default case for error
	printf("Stehe auf %d und suche auf %d	", pos/2+1, (pos + hand)/2+1); //TODO: remove printf in look()
	if( pos + hand < 0 ||
        pos + hand > 63 ||
        currentField[pos + hand] == cP->color ||
        currentField[pos + hand] == (cP->color | KING)) {
		printf(": Geht nich\n ");
		return 0;
    }
	else if(currentField[pos+hand] == NONE) {
		printf(": Frei\n");
		return hand;
	}
	else if(currentField[pos+hand] == cP->oponent) {
        printf(": Gegner\n");
            return 10*(look(pos+hand, hand));
	}
	return 0;
}

void addStep(Moves lastMove, int TNr, int step) {
    if(lastMove!= NULL)
        if(lastMove->sequence[lastMove->len-2] == to32(myTokens[TNr].pos + step)) return; // Ausgangspunkt der letzten Bewegung == Endpunkt der neuen => Rückwärts
    Moves newStep = (Moves)malloc(sizeof(move));
    newStep->sequence[0] = to32(myTokens[TNr].pos);
    newStep->sequence[1] = to32(myTokens[TNr].pos + step);
    newStep->len = 2;
    newStep->weight = 1;
    newStep->next = lastMove;
    myTokens[TNr].possibleMoves = newStep;
    printf("Adding step for Token Nr %d\n", TNr);
    return;
}

void addJump(Moves lastMove, int TNr, int pos, int jump, int sw) {
    // Ausgangspunkt der letzten Bewegung == Endpunkt der neuen => Rückwärts
    if(lastMove!= NULL) {
        if(lastMove->sequence[lastMove->len-2] == to32(myTokens[TNr].pos + 2*jump))
            return;

    //Der neue geht nicht vom selben Startpunkt aus
    // Prüfe, ob Sprung in selbe Richtung wie vorheriger Sprung geht

        if(lastMove->sequence[lastMove->len-2] == to32(pos - 2*jump)) {
            lastMove->sequence[lastMove->len] = to32(pos + 2*jump);
            lastMove->len +=1;
            lastMove->weight +=2;
            printf("Elongating jump\n");
            return;
        }
    }

    //Sonst lege neuen Zug an und kopire bei Richtungsänderung die Sequenz des Vorherigen

    printf("Adding new jump for Token number %d\n", TNr);
    Moves newJump = (Moves)malloc(sizeof(move));
    int len = 0, weight = 0;
    //Falls ein neuer Sprung aus einem alten durch Richtungswechsel entsteht, kopiere alte Sequenz bis Vorletzten
    if(lastMove != NULL) {
        len = lastMove->len;
        weight = lastMove->weight;
        for(int i = 0; i < len-1; i++)
            newJump->sequence[i] = lastMove->sequence[i];
        len--; // Wenn der Zug verlängert wwird werden nicht zwei sondern nur eine Position angefügt
    }
    newJump->sequence[len] = to32(pos);
    newJump->sequence[len+1] = to32(pos + 2*jump);
    newJump->len = 2 + len;
    newJump->weight = 2 + weight;
    newJump->next = lastMove;
    myTokens[TNr].possibleMoves = newJump;
    listMoves(TNr, (pos + 2*jump), sw, 1);
    return;
}


Moves selectMove() {
    int maxWeight = 0;
    Moves current, out;
    for(int i = 0; i < 12; i++) {
        if(myTokens[i].pos == 0 || myTokens[i].possibleMoves == NULL) continue;
		else {
            current = myTokens[i].possibleMoves;
            while(current) {
                if(current->weight > maxWeight) {
                    maxWeight = current->weight;
                    out = current;
                }
                current = current->next;
            }
		}
    }
    return out;
}


void swapDir(int* d, int* l, int*r, int *b) {
	*d = (-1)* *d;
	int tmp = *l;
	*l = (-1)* *r;
	*r = (-1)* tmp;
	if(*b == 63) *b = 0;
	else *b = 63;
	return;
}

int to32(int pos) {
 return (pos/2 + 1);
}
/*
char* StepToString(int Sequenz[13]){
    char str[32];
    snprintf(str, sizeof(str), "%d-%d\n", Sequenz[0], Sequenz[1]);
    printf("Step: %s", str);
    return str;
}

char* JumpToString(int Sequenz[13]){
    char str[32];
    char buffer[32];
    sprintf(buffer,"%d", Sequenz[0]);
    int stelle = 1;
    for (int i = 1 ; i < 13 ; i++)
    {
        if(Sequenz[i]==0) break;
        sprintf(buffer+stelle,"x%d", Sequenz[i]);
        stelle = stelle + 3;
    }
    strcpy(str, buffer);
    return str;
}
*/
/*********
main
*******/
int main ()
{
    // input/output buffer to communicate with Master Control Program
    char decission[BUFFERSIZE];
    char buffer[BUFFERSIZE];
    Field currentPlayer;
    while (1) {
        // receive game state from MCP
        input (buffer);

        // parse and draw board
        currentPlayer = getPlayer(buffer);
        Board b(buffer+2);
        b.draw();

        std::cout << "[ " << buffer[0] << " ] board '" << ((buffer + 2)) << "'" << std::endl;

        /*std::cout << "[ " << buffer[0] << " ] your move : ";

         request user input, read move into buffer
        if (!fgets(buffer, BUFFERSIZE_OUT, stdin)) error ("fgets() failed");
        */
        startThinking(b.field, currentPlayer);
        output();

        // send move back to MCP

        //output(decission);
    }
}


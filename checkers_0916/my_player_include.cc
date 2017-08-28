#include <unistd.h>
#include <cstring>
#include <cassert>

#include <iostream>
#include <algorithm>
extern "C"{
    #include "think.h"
}

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
        if (field[i] & BLACK) c = field[i];
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

//reads the "board-situation"-string the mcp printed on the console
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

// "just" replace buffer by the output of logics formated as
void output (char* buffer)
{
    int l = strlen(buffer);
    if (buffer[l-1] != '\n') {
        std::cerr << "too long, had to cut." << std::endl;
        buffer[l-1] = '\n';
    }
    if (write (FD_OUT, buffer, l) != l) error ("error writing FD_OUT\n");
}

Field getPlayer(char* buffer)
{
    Field p = NONE;
    char c = buffer[1];
        switch (c) {
            case 'B' : p = BLACK; break;
            case 'W' : p = WHITE; break;
            default : error ("unknown char '%c' in input string\n", c);
        }
    return p;
}

void startThinking(const Field* field, Field player, char*dec)
{
 strcpy(dec, think(field, player));
}


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

        /*std::cout << "[ " << buffer[0] << " ] board '" << ((buffer + 2)) << "'" << std::endl;

        std::cout << "[ " << buffer[0] << " ] your move : ";

         request user input, read move into buffer
        if (!fgets(buffer, BUFFERSIZE_OUT, stdin)) error ("fgets() failed");
        */
        startThinking(b.field, currentPlayer, decission);

        // send move back to MCP

        output(decission);
    }
}


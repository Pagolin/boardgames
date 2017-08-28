#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "think.h"

//Tokens myTokens = NULL; //
player* cP;
//Field currentField[64];

void swapDir(int* d, int* l, int*r, int *b);
void listMoves();
void findValidDirection(int TNr, int pos, int swapped, int jumped);
int look(int pos, int hand, int count);
void addStep(int Nr, int step);
void addJump(int Nr,int pos, int jump, int swapped);


/**********
0. "Thinking" Interface for my_player --> returns calculated move as char* to replace "buffer"
****/
/*
char* think(const Field* Fp, Field cP){
	char*selectedMove;
	currentPlayer = cP // just BLACK or WHITE -> TODO: check by assert (aut idem)
	listTokens(Fp, &myTokens, cP);
	while(myTokens){
		listMoves(myTokens);
		myTokens = myTokens->next;
	}
	selectMaxWeightMoves(&myTokens); //Check each Token for best Moves, delete Tokens without moves
	selectedMove = choseMove(myTokens) //returns token->possibleMoves->sequence
	//TODO: free() player + selectedMove
	return selectedMove;
}
*/


/****
1. Function to list relevant tokens -->i.e.Setup
****/

void listTokens(const Field* Fp, Field color) {
	int i, j = 0;
	char type;
	//TODO: Move initializing player to think
	int op = 3- color;
	cP = (player*)malloc(sizeof(player));
	*cP = (player){color, 1, 7, 9, 63, op};
	if(color&2) *cP = (player){color, -1, -9, 7, 0, op};
	for(i = 0; i < 64; i++) currentField[i] = Fp[i]; //TODO: Evaluate wether ownfield copy is necessary
	for(i = 0; i < 64; i++) {
		if (Fp[i] & color) {
			myTokens[j].pos = i;
			myTokens[j].possibleMoves = NULL;
			if (Fp[i] & KING) type = 'C';
			else type = 'n';
			myTokens[j].type = type;
			j++;
		}
    }
    // seach for and list valid moves for tokens
    for(int i = 0; i< 12; i++) {
        if(myTokens[i].pos == 0) continue;
		findValidDirection(, myTokens[i].pos, 0,0);
	}
}

//
void findValidDirection(int TNr, int pos , int swapped, int jumped) {
    int ad;
	if(pos % 8 == 0) { //Token at left border
		ad = look(pos, cP->right, TNr);
	}
	else if(pos % 8 == 7){ //Token at right border
		ad = look(pos, cP->left, TNr);
	}
	else{
		ad = look(pos, cP->left, TNr) + look(pos, cP->right, TNr);
	}
	if(abs(ad)> 10) ad -= ad % 10; //dont add Steps when ypu found jumps
	switch(abs(ad)) {
        case 7: if(!jumped) addStep(TNr, ad); break; // using ad instead of left right since 7 = left but -7 = right;
        case 9: if(!jumped) addStep(TNr, ad); break;
        case 10: if(!jumped) {addStep(TNr, cP->left); addStep(TNr, cP->right);} break;
        case 70: addJump(TNr, pos, ad/10, swapped); break;
        case 90: addJump(TNr, pos, ad/10, swapped); break;
        case 160: addJump(TNr, pos, cP->left, swapped); addJump(TNr, pos, cP->right, swapped); break;
        default: printf("No Moves found\n"); break;
    }
    if(swapped == 1) {
        swapDir(&(cP->dir), &(cP->left), &(cP->right), &(cP->bound)); return;
    }
    // case Token is a checker, search also in oposit direction
	if(myTokens[TNr].type == 'C') {
        swapDir(&(cP->dir), &(cP->left), &(cP->right), &(cP->bound));
		swapped = 1;
		findValidDirection(TNr, pos, 1, jumped);
	}
	return;
}

int look(int pos, int hand, int count) {
	printf("Stehe auf %d und suche auf %d	", pos/2+1, (pos + hand)/2+1); //TODO: remove printf in look()
	if(pos + hand < 0 || pos + hand > 63 || currentField[pos + hand] % 2 == cP->color % 2) {
		printf (": Geht nich\n "); return 0;
		}
	else if(currentField[pos+hand] == NONE) {
		printf(": Frei\n");
		return hand;
	}
	else if(currentField[pos+hand] == cP->oponent) {
        printf(": Gegner\n");
            return 10*(look(pos+hand, hand, count));
	}
}

void addStep(int Nr, int step) {
    printf("Adding step for Token at %d\n", (myTokens[Nr].pos/2)+1);
    Moves newStep = (Moves)malloc(sizeof(move));
    newStep->sequence[0] = (myTokens[Nr].pos)/2 +1;
    newStep->sequence[1] = (myTokens[Nr].pos + step)/2 +1;
    newStep->len = 2;
    newStep->weight = 1;
    newStep->next = myTokens[Nr].possibleMoves;
    printf("Sequence: ");
    printf(" von %d nach %d ", newStep->sequence[0], newStep->sequence[1]);
    printf("\n");
    return;
}
void addJump(int Nr, int pos, int jump, int sw) {
    Moves lastJump = myTokens[Nr].possibleMoves;
    if(lastJump != NULL && lastJump->sequence[lastJump->len-2] != pos){ //es gab schon einen sprung und der neue geht nicht vom selben Startpunkt aus
        lastJump->sequence[lastJump->len] = ((pos + 2*jump)/2 +1);
        lastJump->len +=1;
        lastJump->weight +=2;
        printf("Elongating jump\n");
    }
    else{
        printf("Adding new jump for Token at %d\n", pos/2+1);
        Moves newStep = (Moves)malloc(sizeof(move));
        newStep->sequence[0] = (pos/2)+1;
        newStep->sequence[1] = ((pos + 2*jump)/2 +1);
        newStep->len = 2;
        newStep->weight = 2;
        newStep->next = myTokens[Nr].possibleMoves;
    }
    findValidDirection(Nr, (pos+ 2*jump), sw, 1);
    return;
}


void swapDir(int* d, int* l, int*r, int *b) {
	*d = (-1)* *d;
	int tmp = *l;
	*l = (-1)* *r;
	*r = (-1)* tmp;
	if(*b = 63) *b = 0;
	else *b = 63;
	return;
}



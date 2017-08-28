#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "think.h"

//Tokens myTokens = NULL; //
player* cP;
//Field currentField[64];

void swapDir(int* d, int* l, int*r, int *b);
void listMoves();
void findValidDirection(int dir, int left, int right, int swapped, int count);
int look(int pos, int hand, int count);
void addStep(int Nr, int step);
void addJump(int Nr,int pos, int step);


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
	*cP = (player){color, 1, 3, 4, 63, op};
	if(color&2) *cP = (player){color, -1, -4, -3, 0, op};
	for(i = 0; i < 64; i++) currentField[i] = Fp[i]; //TODO: Evaluate wether ownfield copy is necessary
	for(i = 0; i < 64; i++) {
		if (Fp[i] & color) {
			myTokens[j].pos = (i/2)+1;
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
		findValidDirection(cP->dir, cP->left, cP->right, 0, i);
	}
}

void findValidDirection(int dir, int left, int right, int swapped, int TNr) {
	int pos = myTokens[TNr].pos, ad;


	if(pos % 4 == 0) { //Token at left border
		ad = look(pos, cP->right, TNr);
	}
	else if(pos % 4 == 3){ //Token at right border
		ad = look(pos, cP->left, TNr);
	}
	else{
		ad = look(pos, cP->left, TNr) + look(pos, cP->right, TNr);
	}
	if(abs(ad)> 10) ad -= ad % 10; //dont add Steps when ypu found jumps
	switch(abs(ad)) {
        case 3: addStep(TNr, ad); break; // using ad instead of left right since 7 = left but -7 = right;
        case 4: addStep(TNr, ad); break;;
        case 7: addStep(TNr, cP->left), addStep(TNr, cP->right); break;
        case 30: addJump(TNr, pos, ad/10); break;
        case 40: addJump(TNr, pos, ad/10); break;
        case 70: addJump(TNr, pos, cP->left); addJump(TNr, pos, cP->left); break;
        default: printf("No Moves found\n"); break;
    }
    if(swapped == 1) {
        swapDir(&(cP->dir), &(cP->left), &(cP->right), &(cP->bound)); return;
    }
    // case Token is a checker, search also in oposit direction
	if(myTokens[TNr].type == 'C') {
        swapDir(&(cP->dir), &(cP->left), &(cP->right), &(cP->bound));
		swapped = 1;
		findValidDirection(cP->dir, cP->left, cP->right, swapped, TNr);
	}
	return;
}

int look(int pos, int hand, int count) {
	printf("Stehe auf %d und suche auf %d	", pos, pos + hand); //TODO: remove printf in look()
	if(pos + hand < 0 || pos + hand > 32 || currentField[pos + hand] % 2 == cP->color % 2) {
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
    printf("Adding step for Token at %d\n", myTokens[Nr].pos);
    Moves newStep = (Moves)malloc(sizeof(move));
    newStep->sequence[0] = myTokens[Nr].pos;
    newStep->sequence[1] = myTokens[Nr].pos + step;
    newStep->len = 2;
    newStep->weight = 1;
    newStep->next = myTokens[Nr].possibleMoves;
    printf("Sequence: ");
    printf(" von %d nach %d ", newStep->sequence[0], newStep->sequence[i+1]);
    printf("\n");
    return;
}
void addJump(int Nr,int pos, int step) {
    printf("Adding jump for Token at %d\n", pos);

    return;
}


void swapDir(int* d, int* l, int*r, int *b) {
	*d = (-1)* *d;
	int tmp = *l;
	*l = (-1)* *r;
	*r = (-1)* tmp;
	if(*b = 32) *b = 0;
	else *b = 32;
	return;
}



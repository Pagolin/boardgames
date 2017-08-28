#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <vector>
#include <random>
#include "utils.h"
using namespace std;


Marble :: Marble(char h, int diag, boardPosition bP) {
		horizontal	= h;
		diagonal	= diag;
		board_pos	= bP;
		dist_to_border = distance_to_border(bP.row, bP.column);
};
		
void Marble :: update(void){
			board_pos.row = to_Int(horizontal);
			board_pos.column = diagonal;
			dist_to_border = distance_to_border(board_pos.row, board_pos.column);
};


Move :: Move(int dir, boardPosition start, boardPosition end) {
		direction 	= dir;
		start_pos 	= start;
		end_pos 	= end;
		start_row	= to_ABC(start.row);
		start_diag	= start.column;
		end_row		= start_row - dir_array[dir][0];
		end_diag	= start_diag + dir_array[dir][1];
		value 		= 0;		
}




/** source: http://stackoverflow.com/questions/12657962/how-do-i-generate-a-random-number-between-two-variables-that-i-have-stored**/
std::random_device seeder;
std::mt19937 engine(seeder());

int get_random_number(int min, int max) 
{	
	std::uniform_int_distribution<int> distribution(min, max);
	int randomNr = distribution(engine);
	return randomNr;
}

int select_random(std::vector<Move> moveVector) {
	int max = moveVector.size();
	int random = get_random_number(0, max-1);
	return random;
}



/******
Utils
* Funktions to print internal representation of game state 
* (board, marbles, possiblemoves)
*****/


void write_board(char *board_input) 
{
        int const line_length[] = {5, 6, 7, 8, 9, 8, 7, 6, 5};

        int offset = 63;
        for (int l = 0; l < 9; ++l) {
                offset -= line_length[l];
                printf("%c  ", 'I' - l);

                for (int i = 0; i < 9-line_length[l]; ++i) {
                        printf("  ");
                }
                printf("%c", board_input[offset]);
                for (int i = 1; i < line_length[l]; ++i) {
                        printf(" - %c", board_input[offset+i]);
                }

                if (l > 4) {
                        printf("   %i", 14-l);
                }
                printf("\n    ");
                for (int i = 1; i < 9-line_length[l]+(l>4); ++i) {
                        printf("  ");
                }
                if (l < 4) {
                        for (int i = 0; i < line_length[l]; ++i) {
                                printf("/ \\ ");
                        }
                } else if (l < 8) {
                        for (int i = 1; i < line_length[l]; ++i) {
                                printf("\\ / ");
                        }
                }
                printf("\n");
        }
        printf("             1   2   3   4   5\n\n");
        printf("You're playing as %s.\n", board_input[0] == 'B' ?
               "black" : "white");
}


void print_current_board(board aBoard) 
{
	for(int i= 0; i < boardDim; i++) {
		for(int j= 0; j < boardDim; j++) {
			if(aBoard[i][j] == NULL) printf("| ");
			else printf("|%c", aBoard[i][j]);
		}
		printf("|\n");
	}
}


/**
 * Funktion fills entire internal representation of the game board with 
 * NULL, prior to filling it with actual game state...boarders of the 
 * game board thereby keep their "Null" and enable checking if a Marble 
 * would leave the board in a particular move
 **/

void fill_with_null(board aBoard) 
{
	for(int i= 0; i < boardDim; i++) {
		for(int j= 0; j < boardDim; j++) {
			aBoard[i][j] = NULL;
		}
	}
}

void copy_board(board from, board to) 
{
	for(int i= 0; i < boardDim; i++) {
		for(int j= 0; j < boardDim; j++) {
			to[i][j] = from[i][j];
		}
	}
}

char to_ABC(int row)
{
	return (char)(74-row);
}

int to_Int(char row) 
{
	return 74-row;
}

bool compare_pos(boardPosition one, boardPosition two) {
	if(one.row == two.row && one.column == two.column) {
		return true;
	} else {
		return false;
	}	
}
/**0 if marble is at the border, negativ if marble was kicked**/
int distance_to_border(int row, int col) {
	return distance_array[row][col];
}

/**sums every marble that might be kicked * every direction kick might come from**/
int get_marbles_in_danger(vector<Marble> marbles, board aBoard, char oponent) {
	int danger = 0; // *hihi*
	int row, column, op_row, op_column, next_row, next_column;
	
	for(Marble m : marbles) {
		for(int dir=0; dir < 3; dir++) {
			row = m.board_pos.row + dir_array[dir][0];
			column = m.board_pos.column + dir_array[dir][1];
			op_row = m.board_pos.row - dir_array[dir][0];
			op_column = m.board_pos.column- dir_array[dir][1];
			if(aBoard[row][column]==oponent && aBoard[op_row][op_column]=='\0') {
				next_row = row + dir_array[dir][0];
				next_column = column + dir_array[dir][1];
				if(aBoard[row][column]==oponent) {
					danger+=5;
				}
				else danger++;
			}
			if(aBoard[row][column]=='\0' && aBoard[op_row][op_column]==oponent) {
				next_row = op_row - dir_array[dir][0];
				next_column = op_column - dir_array[dir][1];
				if(aBoard[row][column]==oponent) {
					danger+=5;
				}
				else danger++;
			}
		}
	}
	return danger;
}

float get_changed_dist(vector<Marble>before, vector<Marble>after){
		float sum_before= 0.0;
		float count=0.0;
		for(Marble m : before) {
			sum_before+= m.dist_to_border;
			count++;
		}
		float mean_before = sum_before / count;
		float sum_after= 0.0;
		count=0.0;
		for(Marble m : after) {
			sum_after+= m.dist_to_border;
			count++;
		}
		float mean_after = sum_after / count;
		return mean_after - mean_before;
}

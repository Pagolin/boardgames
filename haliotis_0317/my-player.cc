
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <assert.h>
#include <vector>
#include "mcp.h"
#include "utils.h"
using namespace std;

void read_board(char *);
void write_move(char *);
void write_board(char *);
void get_move(char *);
int check_dir_rec(board aBoard, char me, char oponent, int direction, boardPosition start, boardPosition end, int count_me, int count_oponent);
void scan_board(char*);
int select_move();



vector<Marble> myMarbleVector;
vector<Marble> oponentMarbleVector;

vector<Move> validMovesVector;
vector<Move> bestMovesVector;

char player;
char oponent;
board myBoard;

void read_board(char *buf) {
	ssize_t count = read(CHILD_IN_FD, buf, 64);
	assert(count == 64);
	assert(buf[63] == '\0');
}
/** Reads myBoard, myMarbleVector and oponentMarbleVector from mcp input array **/
void scan_board(char* board_input) 
{
	int const line_length[] = {5, 6, 7, 8, 9, 8, 7, 6, 5};
	int totalcount = 62;
	player = board_input[0];
	oponent = (player=='W'? 'B' : 'W');

	/**Find marbles of the current player
	 * two loops because rows from I to E go from x to 9, while remaining go from 1 to x
	 **/
	for (int line = 0; line < 5; line++) {
		for(int i = 9; i >= 10-line_length[line]; i--) {
			myBoard[line+1][i] = board_input[totalcount];
			char field = board_input[totalcount];
			if( field == player || field == oponent) { 
				/** Found a new marble:: char horizontal; int diagonal; board_pos(x,y)**/
				char row = 'I'-line;
				int diagonal = i;
				boardPosition bP = {to_Int(row), i};
				Marble new_m(row, diagonal, bP);
				/** Sort new marble to it's team **/
				(field == player ? myMarbleVector.push_back(new_m): oponentMarbleVector.push_back(new_m));
			}
			totalcount--;
		}
	}
	for (int line = 5; line < 9; line++) {
		for(int i = line_length[line]; i > 0; i--) {
			myBoard[line+1][i] = board_input[totalcount];
			char field = board_input[totalcount];
			if( field == player || field == oponent) { 
				/** Found a new Marble:: char horizontal; int diagonal; board_pos(x,y)**/
				char row = 'I'-line;
				int diagonal = i;
				boardPosition bP = {to_Int(row), i};
				Marble new_m(row, diagonal, bP);
				/** Sort new marble to it's team **/
				(field == player ? myMarbleVector.push_back(new_m): oponentMarbleVector.push_back(new_m));
				;
			}
			totalcount--;
		}
	}
}

/**Iterates over myMarbleVector and lists valid moves in validMoves vector
 * Uses check_dir_rec() to check the state of game field for the 6 posible 
 * moving directions of a marble
 **/
void find_valid_moves(vector<Marble> marbles, board aBoard, char me, char op, vector<Move>* valMoves) 
{	
	/**loop through all my marbles**/	
	for(Marble m : marbles) {
		auto current_marble = m;
		boardPosition start = current_marble.board_pos;
		
		/**loop through the six possible directions to move in**/
		for(int j= 0; j < 6; j++) {
			boardPosition end;
			end.row = start.row + dir_array[j][0];
			end.column = start.column + dir_array[j][1];
			int move_value = check_dir_rec(aBoard, me, op, j, start, end, 1, 0);
			if( move_value != 0) { 
					Move new_move(j, start, end);
					new_move.value = move_value;
					valMoves->push_back(new_move);
			}		
		}
	}
}

int check_dir_rec(board aBoard, char me, char op, int dir, boardPosition start, boardPosition end, int count_player, int count_oponent) 
{	
	boardPosition next_end;
			next_end.row = end.row + dir_array[dir][0];
			next_end.column = end.column + dir_array[dir][1];
	char next_field = aBoard[end.row][end.column];
	char last_marble = aBoard[start.row][start.column];
	switch(next_field) {
		/** Me: x  Oponent:o 
		 * Cases for hiting NULL:  	*xNULL -> 0 | *oNULL -> 2
		 * o > x or xox are excluded earlier, see cases 'B' 'W'
		 * **/
		case NULL:	{ 	if(last_marble == me) return 0; 
						else if(last_marble == op && count_player > count_oponent) {
							//TODO: Kicking bonus might be replaced by checking negativ dstance_to_border in oponent_marbles
							return 10 +count_player+count_oponent;
						} 
					}	
		/**Cases for hiting '.': x. -> 1 | xx. -> 1| xxx. -> 1| xxo. -> 1 | xxxo. -> 1 |xxxoo. -> 1
		 * o > x or xox are excluded earlier, see cases 'B' 'W'
		 **/
		case '.': 	{	return count_player+count_oponent;}
		
		case 'B': 	{ 	if('B' == me) { 
							count_player++;
							if(count_player > 3) return 0; /**more than three in a row **/
							if(count_oponent != 0) return 0; /**mixed colored row**/
							else return check_dir_rec(aBoard, me, op, dir, end, next_end, count_player, count_oponent);
						}
						if('B' == op) {
							count_oponent++;
							if(count_oponent >= count_player) return 0;
							else return check_dir_rec(aBoard, me, op, dir, end, next_end, count_player, count_oponent);
						}
					}
		case 'W': 	{ 	if('W' == me) {
							count_player++;
							if(count_player > 3) return 0; /**more than three in a row **/
							if(count_oponent != 0) return 0; /**mixed colored row**/
							else return check_dir_rec(aBoard, me, op, dir, end, next_end, count_player, count_oponent);
						}
						if('W' == op) {
							count_oponent++;
							if(count_oponent >= count_player) return 0;
							else return check_dir_rec(aBoard, me, op, dir, end, next_end, count_player, count_oponent);
						}
					}
		default:  { return 0;}		
	}								
}	

void get_state_after_move(Move m, vector<Marble>* myMarblesAfterMove, vector<Marble>* opMarblesAfterMove, board aBoard){
	int dir = m.direction;
	int length = m.value%10;
	boardPosition start = m.start_pos;
	boardPosition next;
	char temp_field = '.';
	/**stepping for the legth of move, i.e. number of moved marbles through 
	 * the board find out if its my or oponents marble and write its new position into 
	 * myMarblesAfterMove or oponentMovedMarbles
	 * aBoard, a copy of current game board is thereby updated to predicted new gamestate
	**/
	for(int i=0; i<length; i++){
		next.row = start.row + dir_array[dir][0];
		next.column = start.column + dir_array[dir][1];
		if(myBoard[start.row][start.column]== player) {
			aBoard[start.row][start.column]=temp_field;
			temp_field=player;
			int it;
			for(int j=0; j< (int)myMarblesAfterMove->size(); j++) {
				if(compare_pos((*myMarblesAfterMove)[j].board_pos, start)){
					it= j;
				}
			}
			(*myMarblesAfterMove)[it].horizontal	= to_ABC(next.row);
			(*myMarblesAfterMove)[it].diagonal		= next.column;			
		}		
		else if(myBoard[start.row][start.column]== oponent) {
			aBoard[start.row][start.column]=temp_field;
			temp_field=oponent;
			int it;
			for(int j=0; j< (int)(*opMarblesAfterMove).size(); j++) {
				if(compare_pos((*opMarblesAfterMove)[j].board_pos, start)){
					it = j;					
				}		
			}
			(*opMarblesAfterMove)[it].horizontal	= to_ABC(next.row);
			(*opMarblesAfterMove)[it].diagonal		= next.column;
		}
		else printf("found  %c",myBoard[start.row][start.column]);
		start = next;		
	}
	for(int j=0; j< (int)(myMarblesAfterMove->size()); j++) {
		(*myMarblesAfterMove)[j].update();
	}
	for(int j=0; j< (int)(opMarblesAfterMove->size()); j++) {
		(*opMarblesAfterMove)[j].update();
	}
}


/**Get game state after a move validMovesVector[i]
 * evaluate changes in placement of my and oponent marbles
 * **/
void evaluate_move(Move* m, vector<Marble>* myMarblesAfterMove, vector<Marble>* opMarblesAfterMove, board boardAfterMove)
{
	get_state_after_move((*m), myMarblesAfterMove, opMarblesAfterMove, boardAfterMove);
	if(distance_array[m->start_pos.row][m->start_pos.column] < distance_array[m->end_pos.row][m->end_pos.column]) {
		m->value += 5;
	} 
	//evaluate by mean distance to center, 
	float changed_mean_dist_mine = get_changed_dist(myMarbleVector, (*myMarblesAfterMove));
	if(changed_mean_dist_mine > 0){
		m->value += 10*changed_mean_dist_mine;
	} 
	//evaluate by threatened own marbles
	int marbles_in_danger_before = get_marbles_in_danger(myMarbleVector, myBoard, oponent);
	int marbles_in_danger_after = get_marbles_in_danger((*myMarblesAfterMove), boardAfterMove, oponent);
	m->value += (marbles_in_danger_before - marbles_in_danger_after);
	
	//evaluate by next possible oponent moves
	vector<Move> oponentMoves;
	find_valid_moves((*opMarblesAfterMove), boardAfterMove, oponent, player, &oponentMoves);
	bool kicking = false;
	for(Move opMove : oponentMoves) {
		if(opMove.value > 10) {
			kicking = true;
			return;
		}
	}
	oponentMoves.clear();
	if(kicking) {
		m->value-=10;
	}
}


/**Picks the Moves with highest value and lists them in bestMovesVector
 * Picks one of those equaly good using select_random() and returns its position in bestMovesVector
 **/ 
int select_move() {
	int max_value = 1;
	for(Move m: validMovesVector) {
		if(m.value > max_value) {
			max_value = m.value;			
		}
	}
	for(Move m: validMovesVector) {
		if(m.value == max_value)
			bestMovesVector.push_back(m);
	}
	int best_move_nr = select_random(bestMovesVector);
	return best_move_nr;
}


void get_move(char* move_buff) 
{
	find_valid_moves(myMarbleVector, myBoard, player, oponent, &validMovesVector);
	if(validMovesVector.size()==0) {
		printf("No valid moves");
		return;
	}
	
	vector<Marble> myMarblesAfterMove;
	vector<Marble> opMarblesAfterMove;
	board boardAfterMove;
	for(int i=0; i< (int)validMovesVector.size(); i++) {
		myMarblesAfterMove = myMarbleVector; ;
		opMarblesAfterMove = oponentMarbleVector;
		copy_board(myBoard, boardAfterMove);
		
			evaluate_move(&validMovesVector[i], &myMarblesAfterMove, &opMarblesAfterMove, boardAfterMove);
			
		myMarblesAfterMove.clear();
		opMarblesAfterMove.clear();
	}
	int best = select_move();
	auto m = bestMovesVector[best];	
	//evaluate_move(m);
	//TODO: move-buffer filling compatible with broadside moves
	move_buff[0]= m.start_row;
	move_buff[1]= (char)m.start_diag + 48;
	move_buff[2]= ',';
	move_buff[3]= m.end_row;
	move_buff[4]= (char)m.end_diag + 48;
	move_buff[5]= '\0';
}



void write_move(char *buf) 
{
	size_t const len = strlen(buf)+1;
	ssize_t count = write(CHILD_OUT_FD, buf, len);
	assert(count == static_cast<ssize_t>(len));
}


int main(int argc, char *argv[]) 
{
   (void)argc; (void)argv;
	char board_buffer[64];
	char move_buffer[10];
	fill_with_null(myBoard);
	while (true) {
			read_board(board_buffer);
			write_board(board_buffer);                
			scan_board(board_buffer);
			get_move(move_buffer);
			/**for(Move m : validMovesVector) {
				printf("Move: %c%i, %c%i Dir:%i\n ", m.start_row, m.start_diag, m.end_row, m.end_diag, m.direction);
			}**/
			printf("move is: %s\n", move_buffer);
			write_move(move_buffer);
			/**empty the marble- and movevector after every turn**/
			myMarbleVector.clear();
			oponentMarbleVector.clear(); 
			validMovesVector.clear();
			bestMovesVector.clear();
	}
}


#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <vector>
#include <random>
using namespace std;

//changed dimension several times so this is to make shure it's the same in every function
#define boardDim  11 
typedef char board[boardDim][boardDim];

typedef struct boardPosition{
	int row;
	int column;
}boardPosition;



/**Array stores the directions to possibly move marbles in **/
const int dir_array[6][2] = {
/**  x+, y+ **/
	{ 1, 0},
	{ 0, 1}, 
	{ 1,-1},
	{-1, 0},
	{ 0,-1},
	{-1, 1},
};

/**Distances to border of the game board as x_distance * y_distance
 * out of board as -1
 **/
const int distance_array[11][11] = {
	{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},
	{-1,-1,-1,-1,-1, 0, 0, 0, 0, 0,-1},
	{-1,-1,-1,-1, 0, 1, 2, 2, 1, 0,-1},
	{-1,-1,-1, 0, 1, 4, 6, 4, 1, 0,-1},
	{-1,-1, 0, 1, 6, 9, 9, 6, 1, 0,-1},
	{-1, 0, 1, 8,12,16,12, 8, 1, 0,-1},
	{-1, 0, 1, 6, 9, 9, 6, 1, 0,-1,-1},
	{-1, 0, 1, 4, 6, 4, 1, 0,-1,-1,-1},
	{-1, 0, 1, 2, 2, 1, 0,-1,-1,-1,-1},
	{-1, 0, 0, 0, 0, 0,-1,-1,-1,-1,-1},
	{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1},
};

class Marble 
{
   public:
		Marble(char, int, boardPosition);
		char horizontal;
		int diagonal;
		boardPosition board_pos;
		int dist_to_border;
		void update(void);
};


class Move 
{
	public:
		Move(int dir, boardPosition start, boardPosition end);
		int direction;
		boardPosition start_pos;
		boardPosition end_pos;
		char start_row;
		int start_diag;
		char end_row;
		int end_diag;
		int value;
		//int kicking;
		//int nr_of_moved;
		//int my_mean_dist;
		//int mine_at_border;
		//int mine_in_danger;
		//int op_mean_dist;
		//int op_at_border;
		//int op_in_danger;
		
};


/******
Utils
* Funktions to print internal representation of game state 
* (board, marbles, possiblemoves etc)
*****/


void write_board(char *board_input);

void print_current_board(board aBoard);

/**
 *other helpers
 **/

void fill_with_null(board aBoard);

void copy_board(board from, board to);

char to_ABC(int row);

int to_Int(char row);

int get_random_number(int min, int max);

int select_random(std::vector<Move>);

bool compare_pos(boardPosition one, boardPosition two);

int distance_to_border(int row, int column);

float get_changed_dist(vector<Marble> before, vector<Marble> after);

int get_marbles_in_danger(vector<Marble> marbles, board aBoard, char oponent);

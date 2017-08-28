#ifndef THINK_H_INCLUDED
#define THINK_H_INCLUDED
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef enum Field { 
    NONE  = 0,
    BLACK = 1,
    WHITE = 2,
    KING  = 4,
    BLACKKING = BLACK | KING,
    WHITEKING = WHITE | KING,
}Field;

char* think(const Field* field, Field player);



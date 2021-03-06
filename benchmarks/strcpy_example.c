/*********************/
/* FILENAME: input.c */
/*********************/

/*************************/
/* GENERAL INCLUDE FILES */
/*************************/
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <time.h>

/**********************/
/* KLEE INCLUDE FILES */
/**********************/
#include "klee/klee.h"

#define N 150

//static char fname[N+200];

/************/
/* main ... */
/************/
int main(int argc, char **argv)
{
	char fname[N-2];
	char *argv0 = (char *) malloc(N);
	char *argv1 = (char *) malloc(N);
	char *argv2 = (char *) malloc(N);

	/*****************/
	/*               */
	/* mark strings  */
	/*               */
	/*****************/
	markString(argv0);
	markString(argv1);
	markString(argv2);
	markString(fname);

	// argv2[N-1]=0;
	
	strcpy(fname,argv2);
}


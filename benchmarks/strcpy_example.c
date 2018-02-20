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

void MyMalloc(char *p, int size);
void MyConstStringAssign(char *p,const char *q);
void MyStringAssignWithOffset(char *p, char *q,int offset1);
void MyWriteCharToStringAtOffset(char *p,int offset2,char c);

/************/
/* main ... */
/************/
int main(int argc, char **argv)
{
	/***********************************************/
	/* [1] Declare any (char *) variables here     */
	/* ---------------------------------------     */
	/* Please use naming convention: p1,p2,p3, ... */
	/***********************************************/
	char *p1;
	char *p2=NULL;
	char *p3=NULL;
	char *p4;
	char *p5=NULL;

	/***********************************************/
	/* [3] Declare any const char * variables here */
	/* ---------------------------------------     */
	/* Please use naming convention: r1,r2,r3, ... */
	/***********************************************/
	char *r1;

	/***************************************************/
	/* [6] Declare any symbolic integer variables here */
	/* ---------------------------------------         */
	/* Please use naming convention: i1,i2,i3, ...     */
	/***************************************************/
	int i1;
	int i2;
	int i3;

	/**********************************/
	/* [7] And make them symbolic ... */
	/**********************************/
	klee_make_symbolic(&i1,sizeof(i1),"i1");
	klee_make_symbolic(&i2,sizeof(i2),"i2");
	klee_make_symbolic(&i3,sizeof(i3),"i3");

	/********************************/
	/* [8] example tests to try out */
	/********************************/
	if ((5 <= i1) && (i1 <= 6))
	{		
		/****************************************/
		/*                                      */
		/* allocate buffers of symbolic size i1 */
		/*                                      */
		/****************************************/		
		p1 = malloc(i1);
		p2 = malloc(i1);
		r1 = malloc(3);

		/*****************/
		/*               */
		/* mark strings  */
		/*               */
		/*****************/
		markString(p1);
		markString(p2);
		markString(r1);
		
		/********************************/
		/*                              */
		/*       +---+---+---+---+---+  */
		/* p1 == | P | T | Q | D |x00|  */
		/*       +---+---+---+---+---+  */
		/*                              */
		/********************************/
		p1[0] = 'P';
		p1[1] = 'T';
		p1[2] = 'Q';
		p1[3] = 'D';
		p1[4] =  0 ;
		 
		/********************************/
		/*                              */
		/*       +---+---+---+---+---+  */
		/* p2 == | P | F | M | D |x00|  */
		/*       +---+---+---+---+---+  */
		/*                              */
		/********************************/
		p2[0] = 'P';
		p2[1] = 'F';
		p2[2] = 'M';
		p2[3] = 'D';
		p2[4] =  0 ;

		/************************************************************/
		/*                            Write x00:                    */
		/*                                                          */
		/*                 +-------either      or -----+            */
		/*                 |                           |            */
		/*                 |                           |            */
		/*             inside AB:                   outside AB:     */
		/*                 .                            ...         */
		/*                 .                           .....        */
		/*             .   .   .                     ........       */
		/*         .   .   .   .   .               ...........      */
		/*         ?   ?   ?   ?   ?             ..............     */
		/*         +---+---+---+---+           .................    */
		/*         |   |   |   |   |         ....................   */
		/*         V   V   V   V   V       .......................  */
		/*       +---+---+---+---+---+    ......................... */
		/* p1 == | P | R | Q | D |x00|    ERROR OUT OF BOUND ACCESS */
		/*       +---+---+---+---+---+                              */
		/*                                                          */
		/************************************************************/
		p1[i2] = 0;

		/************************/
		/*                      */
		/*       +---+---+---+  */
		/* r1 == | T | Q |x00|  */
		/*       +---+---+---+  */
		/*                      */
		/************************/
		r1[0] = 'T';
		r1[1] = 'Q';
		r1[2] =  0 ;

		if (i3 <= 1)
		{
			p3 = p2+1;
			strcpy(p3,r1);
		}

		if (strcmp(p2,p1) == 0)
		{
			MyPrintOutput("INSIDE if (...)");
			assert(0);
		}
	}
}


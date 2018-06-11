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

void markString(char *p){}
/************/
/* main ... */
/************/
int main(int argc, char **argv)
{
	char *p1;
	char *p2;

	/****************************************/
	/*                                      */
	/* allocate buffers of symbolic size i1 */
	/*                                      */
	/****************************************/
	p1 = malloc(10);
	p2 = malloc(10);

	markString(p1);
	markString(p2);
  klee_make_symbolic(p1, 10, "p1");
  klee_make_symbolic(p2, 10, "p2");

	p1[9]=0;
	p2[9]=0;
		
	if (strchr(p1,'A'))
	{
		if (strchr(p1,'B'))
		{
			if (strchr(p2,'F'))
			{
				if (strchr(p2,'E'))
				{
					if (strlen(p1) <= 4)
					{
						if (strlen(p2) <= 4)
						{
							if (strcmp(p1,p2) == 0)
							{
								assert(0);
							}
						}
					}
				}
			}
		}
	}
}



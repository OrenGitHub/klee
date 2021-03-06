// RUN: %llvmgcc %s -emit-llvm -O0 -c -o %t1.bc
// RUN: rm -rf %t.klee-out
// RUN: %klee -solver-backend=z3 -search=dfs -use-cex-cache=1 -use-independent-solver=1 -max-solver-time=100 --output-dir=%t.klee-out %t1.bc  > %t1.log
// RUN: cat %t1.log |  wc -l | grep 2
// RUN: cat %t1.log | cut -d ' ' -f2 | grep A | grep B | grep D | grep E | wc -l |grep 2
// RUN: grep -P '[ABDE]{4}\\x00$' %t1.log | wc -l | grep 2
// RUN: cat %t1.log | cut -d ' ' -f2 |sort -u | wc -l | grep 1
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <time.h>

#include "klee/klee.h"

int main(int argc, char **argv)
{
	int   i1;
	char *p1;
	char *p2;


  p1 = malloc(5);
  p2 = malloc(5);
  klee_make_symbolic(p1, 5, "p1");
  klee_make_symbolic(p2, 5, "p2");
  markString(p1);
  markString(p2);
  
  if (strchr(p1,'A')
  	  && strchr(p1,'B')
  		&& strchr(p2,'D')
  		&& strchr(p2,'E')
  		&& strlen(p1) == 4
  		&& strlen(p2)  == 4
  		&& strcmp(p1,p2) == 0
      )
  {
			 MyPrintOutput(p1);
			 MyPrintOutput(p2);
  }
}

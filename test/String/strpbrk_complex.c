// RUN: %llvmgcc %s -emit-llvm -O0 -c -o %t1.bc
// RUN: rm -rf %t.klee-out
// RUN: %klee -debug-z3-dump-queries=/tmp/Z3query.smt2 -constants-as-ABs -solver-backend=z3 -search=dfs -use-cex-cache=0 -use-independent-solver=0 --output-dir=%t.klee-out %t1.bc  > %t1.log
// RUN: cat %t1.log | cut -f2 -d ' ' | cut -f1 -d '\' >  %t2
// RUN: grep M %t2
// RUN: grep B %t2
// RUN: cat %t2 | sort -u | wc -l | grep 2

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <time.h>

#include "klee/klee.h"

int main(int argc, char **argv)
{
	char *p1, *p2;
  p1 = malloc(3);
  markString(p1);
  p2 = malloc(3);
  markString(p2);
  p1[1] = 0;
  p2[1] = 0;
  
  if (strpbrk(p1,"MB"))
  {
    if (strpbrk(p2,"MB")) 
    {
      if(strcmp(p1, p2) != 0) {
        MyPrintOutput(p1);
        MyPrintOutput(p2);
      }
    }
  }
}

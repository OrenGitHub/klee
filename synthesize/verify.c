#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "klee/klee.h"
char *orig(char * nxtchr) {
    char* nameend;
    for (nameend = nxtchr; *nameend && *nameend != '='; nameend++)
         /* Do nothing.  */ ;
    return nameend;
}
char *mine(char* nxtchr, char* prog) {
    char* nameend = nxtchr;

    int i = 0;

   
    int conditional = 1;

    #define cond {if(conditional == 0) {conditional = 1; break;}}
    while(prog[i] != 0) {
        switch(prog[i]) {
//            case 0:  return nameend; // return result
            case 'c': cond i++; nameend = strchr(nxtchr, prog[i]); break; // result = strchr of charcater after c
            case 'e': cond nameend = nxtchr + strlen(nxtchr); break; // result = null term of nxtchr
            case 'd': i++; 
                      if(nameend - nxtchr > 3) return NULL; //Error
                      conditional = (*nameend != prog[i]) ; 
                      break; //dereference and compare with next chr
            case 'z': conditional = (nameend == 0); break; //is null
            default: klee_silent_exit(0);
        }
        i++;
    }
    #undef cond
    return nameend;
 //   klee_silent_exit(0);


    if(*nameend != '\0')
      nameend = strchr(nxtchr, '=');

    if(nameend == 0) {
      nameend = nxtchr + strlen(nxtchr);
    }
    return nameend;

}
#define MAX_TESTCASES 100
int main() {
   char *s1, *s2;

    s1 = malloc(6);
    s2 = malloc(6);
    klee_make_symbolic(s1, 6, "s1");
    klee_make_symbolic(s2, 6, "s2");
    s1[5] = '\0';
//    s1[4] = '\0';
 //   s1[3] = '\0';
    //s1[2] = '\0';
    klee_assume(s1[0] == s2[0]);
    klee_assume(s1[1] == s2[1]);
    klee_assume(s1[2] == s2[2]);
    klee_assume(s1[3] == s2[3]);
    klee_assume(s1[4] == s2[4]);
    klee_assume(s1[5] == s2[5]);
    //prog = "d\0c=zer";
    //char *m = mine(s1, "d\1c=zd\0\0\0");
    char *m = mine(s1, "zzec=ze");
    char *o = orig(s2);
    assert(m - s1 == o - s2 && "Problem with transformation!");
    return 0;
}

#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
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
    int cnd;
   
    int conditional = 1;

//    prog = "tc=ze";
    #define cond {if(conditional == 0) {conditional = 1; break;}}
    while(i < 9) {
        switch(prog[i]) {
            case 'c': i++; cond nameend = strchr(nxtchr, prog[i]); break; // result = strchr of charcater after c
            case 'e': cond nameend = nxtchr + strlen(nxtchr); break; // result = null term of nxtchr
            case 't': 
                      cnd = (nameend - nxtchr > 5) | (nameend < nxtchr);
                      if(cnd == 0) 
                        conditional = ((*nameend) != '\0') ; 
                      else 
                        return NULL;
                      break; //is current pointer terminating string
            case 'z': conditional = nameend == 0; break; //is null
            case '\0': return nameend;
            default: return NULL; klee_silent_exit(0);
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
    char* prog;

    char ** counterexample = calloc(sizeof(char*), MAX_TESTCASES);
    int next_test_case = 0;
    char *s1, *s2;

    
  do {
    printf("At attempt %d\n", next_test_case);

    prog = malloc(10);
    klee_make_symbolic(prog, 10, "program");
    prog[9] = 0;
//    prog = "tc=ze";
//    prog = "zec=ze";

    for(int j = 0; j < next_test_case; j++) {
        char* test = counterexample[j];
        char* test1 = malloc(6);
        for(int g = 0; g < 6; g++)
            test1[g] = test[g];
//        printf("orig output: %d\n", orig(test1) - test1);
        klee_assume((mine(test,prog) - test) == (orig(test1) - test1));
    }
    printf("PROG:");
    for(int k = 0; k < 10; k++) {
        prog[k] = klee_get_valuel(prog[k]);
        printf("%c", prog[k]);
    }
    printf("END\n");

    s1 = malloc(6);
    s2 = malloc(6);
    klee_make_symbolic(s1, 6, "s1");
    klee_make_symbolic(s2, 6, "s2");
    s1[5] = '\0';
    s1[4] = '\0';
 //   s1[3] = '\0';
    //s1[2] = '\0';
    klee_assume(s1[0] == s2[0]);
    klee_assume(s1[1] == s2[1]);
    klee_assume(s1[2] == s2[2]);
    klee_assume(s1[3] == s2[3]);
    klee_assume(s1[4] == s2[4]);
    klee_assume(s1[5] == s2[5]);
    klee_open_merge();
    char *m = mine(s1, prog);
    char *o = orig(s2);
    klee_close_merge();
    int cnd = ( (m - s1) != (o - s2));
    if((klee_is_symbolic(cnd) == 0) & ((m - s1) == (o - s2))) {
        break;
    }
    if(cnd == 1) {
    printf("CEX:");
    for(int n = 0; n < 6; n++) {
//      printf("%d", s1[n]);
      s1[n] = klee_get_valuel(s1[n]);
      printf("%d", s1[n]);
    }
    printf("END\n"); //concretize?
     counterexample[next_test_case] = s1;
     next_test_case++;
     if(next_test_case >= MAX_TESTCASES) assert(0 && "Too small array");
    } else
      klee_silent_exit(0);


 } while(1) ;

    assert(0 && "We should find it!");

    klee_silent_exit(0);
    return 0;
}

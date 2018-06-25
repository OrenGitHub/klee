#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <getopt.h>
#include <assert.h>

#include "klee/klee.h"

static int verbose_flag;
void markString(char* c){}

int
main (int argc, char **argv)
{
//  printf("argv %s\n", argv[1]);
  int aflag = 0;
  int bflag = 0;
  char *cvalue = NULL;
  int index;
  int c;
	static struct option long_options[] =
        {
          /* These options set a flag. */
//          {"verbose", no_argument,       &verbose_flag, 1},
 //         {"brief",   no_argument,       &verbose_flag, 0},
          /* These options don’t set a flag.
             We distinguish them by their indices. */
          {"add-is-a-very-long-flag",     no_argument,       0, 'a'},
          {"append-is-also-pretty-long",  no_argument,       0, 'b'},
//          {"delete",  optional_argument, 0, 'd'},
 //         {"create",  required_argument, 0, 'c'},
          {0, 0, 0, 0}
        };

  int i = 0;
  while(long_options[i].name != 0) {
      markString(long_options[i].name);
      i++;
  }
 //markString(argv);
//  for(i = 0; i < argc; i++)
//      markString(argv[i]);

  char *short_opts = "";
  markString(short_opts);
  int option_index;
  printf("argv %s %d\n",argv[1], argc);

  while ((c = getopt_long (argc, argv, short_opts, long_options, &option_index)) != -1) {
    printf("!!!!! C is %c\n",c);
    switch (c)
      {
      case 'a':
        aflag = 1;
        printf("Set a flag \n");
        break;
      case 'b':
        bflag = 1;
        printf("Set b flag \n");
        break;
      case 'c':
        printf("Set c arg\n");
        cvalue = optarg;
        break;
      case '?':
        printf("Wrong flag!\n");
        return 1;
      default:
        assert(0 && "Shouldn't happen");
      }
  }

  printf ("aflag = %d, bflag = %d\n",
          aflag, bflag);

  if(aflag == 1 && bflag == 1) {
      assert(0 && "GOAL!");
  }

  //for (index = optind; index < argc; index++)
  //  printf ("Non-option argument %s\n", argv[index]);
  return 0;
}


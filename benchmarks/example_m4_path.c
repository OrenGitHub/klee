/* GNU m4 -- A simple macro processor
   Copyright (C) 1989-1993, 1998, 2004, 2006-2010, 2013-2014, 2017 Free
   Software Foundation, Inc.

   This file is part of GNU M4.

   GNU M4 is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   GNU M4 is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

/* Handling of path search of included files via the builtins "include"
   and "sinclude".  */


#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>
#include <error.h>
char * xstrrchr(const char *, char);

void markString(char *p) {}
typedef struct m4__search_path m4__search_path;
typedef struct m4__search_path_info m4__search_path_info;
#define m4__get_search_path(C)                  ((C)->search_path)

struct m4__search_path {
  m4__search_path *next;        /* next directory to search */
  const char *dir;              /* directory */
  int len;
};

typedef struct m4               m4;
struct m4 {
//  m4_symbol_table *     symtab;
//  m4_syntax_table *     syntax;
//  m4_module *           modules;
//  m4_hash *             namemap;

//  const char *          current_file;   /* Current input file.  */
//  int                   current_line;   /* Current input line.  */
//  int                   output_line;    /* Current output line.  */

//  FILE *        debug_file;             /* File for debugging output.  */
//  m4_obstack    trace_messages;
//  int           exit_status;            /* Cumulative exit status.  */
//  int           current_diversion;      /* Current output diversion.  */

  /* Option flags  (set in src/main.c).  */
//  size_t        nesting_limit;                  /* -L */
//  int           debug_level;                    /* -d */
//  size_t        max_debug_arg_length;           /* -l */
//  int           regexp_syntax;                  /* -r */
//  int           opt_flags;

  /* __PRIVATE__: */
  m4__search_path_info  *search_path;   /* The list of path directories. */
//  m4__macro_arg_stacks  *arg_stacks;    /* Array of current argv refs.  */
//  size_t                stacks_count;   /* Size of arg_stacks.  */
//  size_t                expansion_level;/* Macro call nesting level.  */
};


struct m4__search_path_info {
  m4__search_path *list;        /* the list of path directories */
  m4__search_path *list_end;    /* the end of same */
  int max_length;               /* length of longest directory name */
};
//#include "m4private.h"
//#include <config.h>
//
//#include "configmake.h"
//#include "dirname.h"
//#include "filenamecat.h"

#if OS2 /* Any others? */
#  define TRUNCATE_FILENAME 1
#endif

/* Define this to see runtime debug info.  Implied by DEBUG.  */
/*#define DEBUG_INCL */

static const char *FILE_SUFFIXES[] = {
  "",
  ".m4f",
  ".m4",
  NULL
};

static const char *NO_SUFFIXES[] = { "", NULL };


static void
search_path_add (m4__search_path_info *info, const char *dir, bool prepend)
{
  m4__search_path *path = (m4__search_path *) malloc (sizeof *path);

  path->len = strlen (dir);
  path->dir = strdup (dir);

  if (path->len > info->max_length) /* remember len of longest directory */
    info->max_length = path->len;

  if (prepend)
    {
      path->next = info->list;
      info->list = path;
      if (info->list_end == NULL)
        info->list_end = path;
    }
  else
    {
      path->next = NULL;

      if (info->list_end == NULL)
        info->list = path;
      else
        info->list_end->next = path;
      info->list_end = path;
    }
}

static void
search_path_env_init (m4__search_path_info *info, char *path, bool isabs)
{
   char *path_end;
 
   if (info == NULL || path == NULL)
     return;
 
   do
     {
       path_end = strchr (path, ':');
       if (path_end)
         *path_end = '\0';
       if (!isabs || *path == '/')
         search_path_add (info, path, false);
       path = path_end + 1;
     }
   while (path_end);
 }
 
/* Destructively modify PATH to contain no more than 8 non-`.'
   characters, optionally followed by a `.' and a filenname extension
   of 3 characters or fewer. */
static char *
path_truncate (char *path)
{
  char *p, *beg = path;			/* following final '/' */
  for (p = path; *p != '\0'; ++p)
    {
      if (*p == '/')
        beg = 1+ p;
    }

  char *end = strchr (beg, '.');	/* first period */
  char *ext = xstrrchr (beg, '.');	/* last period */

  size_t len = (size_t) (end - beg);	/* length of filename element */
  if (len > 8)
    end = beg + 8;

  if (ext == NULL)
    {
      *end = '\0';
    }
  else if (ext != end)
    {
      stpncpy (end, ext, 4);
    }

  return path;
}

char* file_name_concat (char const *dir, char const *abase, char **base_in_result) {
    int dir_len = strlen(dir);
    int abase_len = strlen(abase);
    char* result = malloc(dir_len + abase_len + 1);
    markString(result);
    result[dir_len + abase_len] = '\0';
    strcpy(result, dir);
    strcpy(result + dir_len, abase);
    return result;
}


/* Search for FILENAME according to -B options, `.', -I options, then
   M4PATH environment.  If successful, return the open file, and if
   RESULT is not NULL, set *RESULT to a malloc'd string that
   represents the file found with respect to the current working
   directory.  Otherwise, return NULL, and errno reflects the failure
   from searching `.' (regardless of what else was searched).  */
char *
m4_path_search (m4 *context, const char *filename, const char **suffixes)
{
  m4__search_path *incl;
  char *filepath;		/* buffer for constructed name */
  size_t max_suffix_len = 0;
  int i, e = 0;

  /* Reject empty file.  */
  if (*filename == '\0')
    {
      return NULL;
    }

  /* Use no suffixes by default.  */
  if (suffixes == NULL)
    suffixes = NO_SUFFIXES;

  /* Find the longest suffix, so that we will always allocate enough
     memory for a filename with suffix.  */
  for (i = 0; suffixes && suffixes[i]; ++i)
    {
      size_t len = strlen (suffixes[i]);
      if (len > max_suffix_len)
        max_suffix_len = len;
    }

  /* If file is absolute, or if we are not searching a path, a single
     lookup will do the trick.  */
  if (filename[0] == '/') //IS_ABSOLUTE_FILE_NAME
    {
      size_t mem = strlen (filename);

      /* Try appending each of the suffixes we were given.  */
      filepath = strncpy (malloc (mem + max_suffix_len +1), filename, mem +1);
      printf("Here!!!!\n");
      filepath = path_truncate (filepath);
      mem = strlen (filepath); /* recalculate length after truncation */

      for (i = 0; suffixes && suffixes[i]; ++i)
        {
          strcpy (filepath + mem, suffixes[i]);
          if (access (filepath, R_OK) == 0)
	    return filepath;

          /* If search fails, we'll use the error we got from the first
	     access (usually with no suffix).  */
        }
      free (filepath);

      /* No such file.  */
      return NULL;
    }

  for (incl = m4__get_search_path (context)->list;
       incl != NULL; incl = incl->next)
    {
      char *pathname = file_name_concat (incl->dir, filename, NULL);
      size_t mem = strlen (pathname);


      if (access (pathname, R_OK) == 0)
        {
      //    m4_debug_message (context, M4_DEBUG_TRACE_PATH,
      //                      _("path search for %s found %s"),
      //                      quotearg_style (locale_quoting_style, filename),
      //                      quotearg_n_style (1, locale_quoting_style, pathname));
          return pathname;
        }
      else if (!incl->len)
	/* Capture errno only when searching `.'.  */

      filepath = strncpy (malloc (mem + max_suffix_len +1), pathname, mem +1);
      free (pathname);
      filepath = path_truncate (filepath);
      mem = strlen (filepath); /* recalculate length after truncation */

      for (i = 0; suffixes && suffixes[i]; ++i)
        {
          strcpy (filepath + mem, suffixes[i]);
          if (access (filepath, R_OK) == 0)
            return filepath;
        }
      free (filepath);
    }

  return NULL;
}


static m4__search_path_info sp_info;
int main(int argc, char** argv) {
  m4 context;
  context.search_path = &sp_info;

  char search_path[30];
  klee_make_symbolic(search_path, sizeof(search_path), "search_path");
  markString(search_path);
      printf("Start@!!!!\n");

//  search_path_env_init (context.search_path, search_path, false);
  search_path_add(context.search_path, "blarp", false);

  printf("[1] Added search path!");
  char str[30];
  klee_make_symbolic(str, sizeof(str), "str");
  markString(str);

//  char *filepath = m4_path_search (&context, str, NULL);
  char *filepath = m4_path_search (&context, str, FILE_SUFFIXES);

  return 0;
}


#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define isblank(c) ((c) == ' ' || (c) == '\t')

static int skip_fields;
static int skip_chars;

static const char *find_field (const char *lp, int size)
{
	int count;
 	//char *lp = line->buffer;
	//size_t size = line->length - 1;
	int i = 0;

	//for (count = 0; count < skip_fields && i < size; count++)
    //{
		//while (i < size && (((lp[i]) == ' ') || ((lp[i]) == '\t')))
		//{
		//	i++;
		//}
		//while (i < size && ! (((lp[i]) == ' ') || ((lp[i]) == '\t')))
		//{
		//	i++;
		//}
	//}

	//for (count = 0; count < skip_chars && i < size; count++)
	//{
	//	i++;
	//}

	return lp + i;
}

#define EXAMPLE_04

static const char *foo(char *s1,char *s2)//,int i1,int i2)
{
#	ifdef EXAMPLE_01
	{
		/****************************************************************/
		/*                                                              */
		/* [1] Original Source Example: vlc-2.2.0/modules/access/http.c */
		/*                                                              */
		/*     while( *str && *str != ';' ) str++;                      */
		/*                                                              */
		/****************************************************************/
		char *p;
		char *s=s1;
		while ((*s != 0) && (*s != 'a') && (*s != 'b'))
		{
			s++;
		}
		return s1;
	}
#	endif
#	ifdef EXAMPLE_02
	{
		/***************************************************************************/
		/*                                                                         */
		/* [2] Original Source Example: libosip2-4.1.0/src/osipparser2/osip_port.c */
		/*                                                                         */
		/*     while (	(' '  == *pbeg) ||                                         */
		/*				('\r' == *pbeg) ||                                         */
		/*				('\n' == *pbeg) ||                                         */
		/*				('\t' == *pbeg))                                           */
    	/*     {                                                                   */
    	/*         pbeg++;                                                         */
		/*     }                                                                   */
		/*                                                                         */
		/***************************************************************************/
		char *s=s1;
		while ((*s == 'a') || (*s == 'b') || (*s == 'c'))
		{
			s++;
		}
	}
#	endif
#	ifdef EXAMPLE_03
	{
		/***************************************************************************/
		/*                                                                         */
		/* [3] Original Source Example: wget-1.8/src/utils.c                       */
		/*                                                                         */
		/*     for (i = strlen (str); i && str[i] != '/' && str[i] != '.'; i--);   */
		/*                                                                         */
		/***************************************************************************/
		int i;
		char *str=s1;
		for (i = strlen (str); i && str[i] != '/' && str[i] != '.'; i--);
	}
#	endif
#	ifdef EXAMPLE_04
	{
		/***************************************************************************/
		/*                                                                         */
		/* [4] Original Source Example: graphviz-2.34.0/lib/common/input.c         */
		/*                                                                         */
		/*     while ((s > path) && ((*s == '/') || (*s == '\\')))                 */
		/*     {                                                                   */
		/*         *s-- = '\0';                                                    */
		/*     }                                                                   */
		/*                                                                         */
		/***************************************************************************/
		char *s=s1;
		char *path=s2;
		while ((s > path) && ((*s == '/') || (*s == '\\')))
		{
			*s-- = '\0';
		}
	}
#	endif
#	ifdef EXAMPLE_05
	{
		/***************************************************************************/
		/*                                                                         */
		/* [5] Original Source Example: graphviz-2.34.0/lib/common/input.c         */
		/*                                                                         */
		/*     while (*str != '\0' && *str != ']')                                 */
		/*     {                                                                   */
		/*         *pad = *str;                                                    */
		/*         str++;                                                          */
		/*     }                                                                   */
		/*                                                                         */
		/***************************************************************************/
		char *s=s1;
		char *path=s2;
		while ((s > path) && ((*s == '/') || (*s == '\\'))
		{
			*s-- = '\0';
		}
	}
#	endif
#ifdef EXAMPLE_06
	{
		/***************************************************************************/
		/*                                                                         */
		/* [6] Original Source Example: wget-1.8/src/progress.c                    */
		/*                                                                         */
		/*     if (dlsz > 0)                                                       */
		/*     {                                                                   */
		/*         while (dlsz-- > 1)                                              */
		/*         {                                                               */
		/*             *p++ = '=';                                                 */
		/*         }                                                               */
		/*         *p++ = '>';                                                     */
		/*     }                                                                   */
		/*                                                                         */
		/***************************************************************************/
		int dlsz = 30;
		char *p=s1;
		if (dlsz > 0)
		{
			/* Draw dlsz-1 '=' chars and one arrow char.  */
			while (dlsz-- > 1)
			{
				*p++ = '=';
			}
			*p++ = '>';
		}
	}
#	endif
#	ifdef EXAMPLE_07
	{
		/***************************************************************************/
		/*                                                                         */
		/* [7] Original Source Example: wget-1.8/src/progress.c                    */
		/*                                                                         */
		/*     while (p - begin < progress_size)                                   */
		/*     {                                                                   */
		/*         *p++ = ' ';                                                     */
		/*     }                                                                   */
		/*                                                                         */
		/***************************************************************************/
		while (p - begin < progress_size)
		{
			*p++ = ' ';
		}
	}
#	endif
	//while (*s == '/' && *(p + 1) == '/')
	//{
	//	path++;
	//}
	//while (*path == '/' && *(path + 1) == '/')
	//{
	//	path++;
	//}
	//while (*p == '*' && *(p + 1) != '(')
	//{
	//   p++;
	//}
	//while ((char_p = strchr (char_p, '/')))
	//{
	//	char_p++;
	//	slash_p = char_p;
	//}
	//while ((*s++ = *p++) != '\0')
	//{
	//	continue;
	//}

	//assert (p - bp->buffer <= bp->width);

	//while (p < bp->buffer + bp->width)
	//{
	//	*p++ = ' ';
	//}

	//int len=9;
	//int prefixes=7;
	//unsigned char *prefixp = malloc(3);
	//unsigned char *prefix_len = malloc(2);
	//while (prefixes--) *--prefixp = (unsigned char) len;
	//while (prefixp > prefix_len) *--prefixp = 0;
   
	//while ((i < size) && p < s)
    //{
	//	*p++ = *s++;
	//	i--;
	//}
	//while (*p == '0')
	//{
	//	*p-- = '\0';
	//}
	// return s;
}

int main(int argc, char **argv)
{
	int  i1=19;
	int  i2=13;
	char s1[8];
	char s2[5];
	s1[3] = 'c';
	printf("%s\n",foo(s1,s2));//,i1,i2));
}


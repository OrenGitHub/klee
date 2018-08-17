#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static char *parseInt(char *s,int *i)
{
	*i = 80;
	return s;
}

static char *parseString(char *s, char **sp)
{
    int i;
    char *c;
    char *p;
    s = parseInt(s, &i);
    if (!s || (i <= 0)) return 0;
    while (*s && (*s != '-')) s++;
    if (*s) s++;
    else {
	return 0;
    }
    c = malloc(i + 1);

    p = c;
    while ((i > 0) && *s)
    {
		*p++ = *s++;
		i--;
    }

    if (i > 0) {
	free (c);
	return 0;
    }

    *p = '\0';
    *sp = c;
    return s;
}

static void trim (char* buf)
{
    char* dotp;
    char* p;

    if ((dotp = strchr (buf,'.'))) {
        p = dotp+1;
        while (*p) p++;  // find end of string
        p--;
        while (*p == '0') *p-- = '\0';
        if (*p == '.')        // If all decimals were zeros, remove ".".
            *p = '\0';
        else
            p++;
    }
}

int main(int argc, char **argv)
{
	char *s = malloc(10);
	trim(s);
	parseString(s,&s);
}

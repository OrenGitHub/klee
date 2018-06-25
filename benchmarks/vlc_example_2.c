/*****************************************************************************
 * httpd.c
 *****************************************************************************
 * Copyright (C) 2004-2006 VLC authors and VideoLAN
 * Copyright © 2004-2007 Rémi Denis-Courmont
 * $Id: d3e138d829d16f5f6193abf2f6db17c4fd2e22d9 $
 *
 * Authors: Laurent Aimar <fenrir@via.ecp.fr>
 *          Rémi Denis-Courmont <rem # videolan.org>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston MA 02110-1301, USA.
 *****************************************************************************/

#ifdef HAVE_CONFIG_H
# include "config.h"
#endif

#include <assert.h>
#include <string.h>

#define N 1024

int main(int argc, char **argv)
{
	char *p;
	char *p2;
	char *p3;
	
	int i_proto;

	p = malloc(N);
	
	klee_make_symbolic(p,       N,          "p");
	klee_make_symbolic(&i_proto,sizeof(int),"i_proto");
	
	p[N-1]=0;	

	while (*p == ' ')
	{
		p++;
	}

	p2 = strchr(p, ' ');
	if (p2)
	{
		*p2++ = '\0';
	}

	if (!strncmp(p, (i_proto == 73) ? "http:" : "rtsp:", 5))
	{
		/* Skip hier-part of URL (if present) */
		p += 5;
		if (!strncmp(p, "//", 2))
		{
			/* skip authority */
			/* see RFC3986 §3.2 */
			p += 2;
			p += strcspn(p, "/?#");
		}
	}
	else if (!strncmp(p, (i_proto == 73) ? "https:" : "rtsps:", 6)) 
	{
		/* Skip hier-part of URL (if present) */
		p += 6;
		if (!strncmp(p, "//", 2))
		{
			/* skip authority */
			/* see RFC3986 §3.2 */
			p += 2;
			p += strcspn(p, "/?#");
		}
	}

	p4 = strdup(p);
	if ((p3 = strchr(p4, '?')) )
	{
		*p3++ = '\0';
		p5 = (uint8_t *)strdup(p3);
	}
	p = p2;

	if (p)
	{
		p = strchr(p, '\n');
	}

	if (p)
	{
		while (*p == '\n' || *p == '\r')
		{
			p++;
		}
		while (p && *p)
		{
			char *line = p;
			char *eol = p = strchr(p, '\n');
			char *colon;

			while (eol && eol >= line && (*eol == '\n' || *eol == '\r'))
            {
				*eol-- = '\0';
			}
			if ((colon = strchr(line, ':')))
			{
				*colon++ = '\0';
				while (*colon == ' ')
				{
					colon++;
				}
				// httpd_MsgAdd(&cl->query, line, "%s", colon);
				
				if (!strcmp(line, "Content-Length"))
                {
					int body = 5;//atol(colon);
				}
			}
			
			if (p)
			{
				p++;
				while (*p == '\n' || *p == '\r')
				{
					p++;
				}
			}
		}
	}
}

#if 0
static bool httpdAuthOk(const char *user, const char *pass, const char *b64)
{
    if (!*user && !*pass)
        return true;

    if (!b64)
        return false;

    if (strncmp(b64, "BASIC", 5))
        return false;

    b64 += 5;
    while (*b64 == ' ')
        b64++;

    char *given_user = vlc_b64_decode(b64);
    if (!given_user)
        return false;

    char *given_pass = NULL;
    given_pass = strchr (given_user, ':');
    if (!given_pass)
        goto auth_failed;

    *given_pass++ = '\0';

    if (strcmp (given_user, user))
        goto auth_failed;

    if (strcmp (given_pass, pass))
        goto auth_failed;

    free(given_user);
    return true;

auth_failed:
    free(given_user);
    return false;
}
#endif

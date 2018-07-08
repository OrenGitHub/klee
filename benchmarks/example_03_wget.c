#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>

#define ISDIGIT(x) (('0' <= x) && (x <= '9'))

#define TOLOWER(x) ((('A' <= x) || (x <= 'Z')) ? (x - 'A' + 'a') : (x))


#define ISSPACE(x) ((x == ' ') || (x == '\t') || (x == '\n') || (x == '\r'))


/* Skip LWS (linear white space), if present.  Returns number of
   characters to skip.  */
int skip_lws (const char *string)
{
	const char *p = string;

	//while (*p == ' ' || *p == '\t' || *p == '\r' || *p == '\n')
	//{
	//	++p;
	//}
	p = f5(p);
	return p - string;
}

char *myStrdup(char *src)
{
	char *dst = malloc( strlen( src ) + 1);
	markString(dst);
	strcpy(dst, src);
	return dst;
}


/* Parse the HTTP status line, which is of format:

   HTTP-Version SP Status-Code SP Reason-Phrase

   The function returns the status-code, or -1 if the status line is
   malformed.  The pointer to reason-phrase is returned in RP.  */
static int parse_http_status_line (const char *line, const char **reason_phrase_ptr)
{
	/* (the variables must not be named `major' and `minor', because
	that breaks compilation with SunOS4 cc.)  */
	int mjr;
	int mnr;
	int statcode;
	const char *p;

	*reason_phrase_ptr = NULL;

	/* The standard format of HTTP-Version is: `HTTP/X.Y', where X is
	major version, and Y is minor version.  */
	if (myStrncmp (line, "HTTP/", 5) != 0)
		return -1;
	line += 5;

	/* Calculate major HTTP version.  */
	p = line;
	for (mjr = 0; ISDIGIT (*line); line++)
	{
		mjr = 10 * mjr + (*line - '0');
	}
	if (*line != '.' || p == line)
	{
		return -1;
	}

	++line;

	/* Calculate minor HTTP version.  */
	p = line;
	//for (mnr = 0; ISDIGIT (*line); line++)
	//{
	//	mnr = 10 * mnr + (*line - '0');
	//}
	line = f6(line);
	if (*line != ' ' || p == line)
	{
		return -1;
	}
	/* Wget will accept only 1.0 and higher HTTP-versions.  The value of
	minor version can be safely ignored.  */
	if (mjr < 1)
	{
		return -1;
	}

	++line;

	/* Calculate status code.  */
	if (!(ISDIGIT (*line) && ISDIGIT (line[1]) && ISDIGIT (line[2])))
	{
		return -1;
	}
	
	statcode = 100 * (*line - '0') + 10 * (line[1] - '0') + (line[2] - '0');

	/* Set up the reason phrase pointer.  */
	line += 3;
	/* RFC2068 requires SPC here, but we allow the string to finish
	here, in case no reason-phrase is present.  */
	if (*line != ' ')
	{
		if (!*line)
		{
			*reason_phrase_ptr = line;
		}
		else
		{
			return -1;
		}
    }
	else
	{
		*reason_phrase_ptr = line + 1;
	}

	return statcode;
}

/* Functions to be used as arguments to header_process(): */

struct http_process_range_closure {
  long first_byte_pos;
  long last_byte_pos;
  long entity_length;
};

/* Parse the `Content-Range' header and extract the information it
   contains.  Returns 1 if successful, -1 otherwise.  */
static int
http_process_range (const char *hdr, void *arg)
{
	struct http_process_range_closure *closure = (struct http_process_range_closure *)arg;
	long num;

	/* Certain versions of Nutscape proxy server send out
	`Content-Length' without "bytes" specifier, which is a breach of
	RFC2068 (as well as the HTTP/1.1 draft which was current at the
	time).  But hell, I must support it...  */
	if (!strncasecmp (hdr, "bytes", 5))
	{
		hdr += 5;
		/* "JavaWebServer/1.1.1" sends "bytes: x-y/z", contrary to the HTTP spec. */
		if (*hdr == ':')
		{
			++hdr;
		}
		hdr += skip_lws (hdr);
		if (!*hdr)
			return 0;
	}
	if (!ISDIGIT (*hdr))
		return 0;
	for (num = 0; ISDIGIT (*hdr); hdr++)
		num = 10 * num + (*hdr - '0');
	if (*hdr != '-' || !ISDIGIT (*(hdr + 1)))
		return 0;
	closure->first_byte_pos = num;
	++hdr;
	for (num = 0; ISDIGIT (*hdr); hdr++)
		num = 10 * num + (*hdr - '0');
	if (*hdr != '/' || !ISDIGIT (*(hdr + 1)))
		return 0;
	closure->last_byte_pos = num;
		++hdr;
	for (num = 0; ISDIGIT (*hdr); hdr++)
		num = 10 * num + (*hdr - '0');
	closure->entity_length = num;
	return 1;
}

/* Check whether the `Connection' header is set to "keep-alive". */
static int
http_process_connection (const char *hdr, void *arg)
{
	int *flag = (int *)arg;
	if (!strcasecmp (hdr, "Keep-Alive"))
		*flag = 1;
	return 1;
}

int header_exists (const char *header, void *closure)
{
	*(int *)closure = 1;
	return 1;
}

struct http_stat
{
  long len;			/* received length */
  long contlen;			/* expected length */
  long restval;			/* the restart value */
  int res;			/* the result of last read */
  char *newloc;			/* new location (redirection) */
  char *remote_time;		/* remote time-stamp string */
  char *error;			/* textual HTTP error */
  int statcode;			/* status code */
  long dltime;			/* time of the download */
  int no_truncate;		/* whether truncating the file is
				   forbidden. */
  const char *referer;		/* value of the referer header. */
  char **local_file;		/* local file. */
};

/* Check whether HEADER begins with NAME and, if yes, skip the `:' and
   the whitespace, and call PROCFUN with the arguments of HEADER's
   contents (after the `:' and space) and ARG.  Otherwise, return 0.  */
int header_process
(
	const char *header,
	const char *name,
	int (*procfun) (const char *, void *),
	void *arg)
{
	/* Check whether HEADER matches NAME.  */
	while (*name && (TOLOWER (*name) == TOLOWER (*header)))
	{
		++name;
		++header;
	}
	if (*name || *header++ != ':')
	{
		return 0;
	}

	header += skip_lws (header);

	return ((*procfun) (header, arg));
}

int header_extract_number (const char *header, void *closure)
{
	const char *p = header;
	long result;

	for (result = 0; ISDIGIT (*p); p++)
	{
		result = 10 * result + (*p - '0');
	}

	/* Failure if no number present. */
	if (p == header)
	{
		return 0;
	}

	/* Skip trailing whitespace. */
	p += skip_lws (p);

	/* Indicate failure if trailing garbage is present. */
	if (*p)
	{
		return 0;
	}

	*(long *)closure = result;
	return 1;
}

/* myStrdup HEADER, and place the pointer to CLOSURE.  */
int header_myStrdup (const char *header, void *closure)
{
	*(char **)closure = myStrdup (header);
	return 1;
}

char *myStrdupdelim (const char *beg, const char *end)
{
	char *res = malloc (end - beg + 1);
	strncpy(res, beg, end - beg);
	res[end - beg] = '\0';
	return res;
}


/* Place the malloc-ed copy of HDR hdr, to the first `;' to ARG.  */
static int http_process_type (const char *hdr, void *arg)
{
	char **result = (char **)arg;
	/* Locate P on `;' or the terminating zero, whichever comes first. */
	const char *p = strchr (hdr, ';');
	if (!p)
	{
		p = hdr + strlen (hdr);
	}
	while (p > hdr && ISSPACE (*(p - 1)))
	{
		--p;
	}
	*result = myStrdupdelim (hdr, p);
	return 1;
}

static int http_process_none (const char *hdr, void *arg)
{
	int *where = (int *)arg;

	if (strstr (hdr, "none"))
	{
		*where = 1;
	}
	else
	{
		*where = 0;
	}
	return 1;
}

struct url
{
  char *url;			/* Original URL */

  char *host;			/* Extracted hostname */
  int port;			/* Port number */

  /* URL components (URL-quoted). */
  char *path;
  char *params;
  char *query;
  char *fragment;

  /* Extracted path info (unquoted). */
  char *dir;
  char *file;

  /* Username and password (unquoted). */
  char *user;
  char *passwd;
};

int oren_ish_shalom=0;

/* Retrieve a document through HTTP protocol.  It recognizes status
   code, and correctly handles redirections.  It closes the network
   socket.  If it receives an error from the functions below it, it
   will print it if there is enough information to do so (almost
   always), returning the error to the caller (i.e. http_loop).

   Various HTTP parameters are stored to hs.  Although it parses the
   response code correctly, it is not used in a sane way.  The caller
   can do that, though.

   If PROXY is non-NULL, the connection will be made to the proxy
   server, and u->url will be requested.  */
// static uerr_t gethttp (struct url *u, struct http_stat *hs, int *dt) //, struct url *proxy)
int main(int argc, char **argv)
{
	char *type;
	int statcode=0;
	long contlen=0;
	long contrange=0;
	int hcount=0;
	struct url u_struct;
	struct url *u = &u_struct;
	struct http_stat h_struct;
	struct http_stat *hs = &h_struct;
	char *authenticate_h;
	int http_keep_alive_1;
	int http_keep_alive_2;
		
	while (1)
	{
		char *hdr;
		int status;
		++hcount;
		/* Get the header.  */
		//status = header_get(
		//	&rbuf,
		//	&hdr,
		//	(hcount == 1 ? HG_NO_CONTINUATIONS : HG_NONE));

		hdr = malloc(64);
		markString(hdr);
		hdr[63]=0;

		// strcpy(hdr,"HTTP/4325.669 222 999");
				
		// klee_make_symbolic(hdr,64,"hdr");

		/* Check for status line.  */
		if (hcount == 1)
		{
			const char *error;
			/* Parse the first line of server response.  */
			statcode = parse_http_status_line (hdr, &error);
						
			hs->statcode = statcode;
			/* Store the descriptive response.  */
			if (statcode == -1) /* malformed response */
			{
				/* A common reason for "malformed response" error is the
				case when no data was actually received.  Handle this
				special case.  */
				if (!*hdr)
				{
					hs->error = myStrdup("No data received");
				}
				else
				{
					hs->error = myStrdup("Malformed status line");
				}
				free (hdr);
				break;
			}
			else if (!*error)
			{
				assert(0);
				hs->error = myStrdup("(no description)");
			}
			else
			{
				assert(0);
				hs->error = myStrdup (error);
			}

			if (statcode != -1)
			{
				//if (opt.server_response)
				{
					oren_ish_shalom = 1;
					// logprintf (LOG_VERBOSE, "\n%2d %s", hcount, hdr);
				}
				//else
				//{
					oren_ish_shalom = 2;
					// logprintf (LOG_VERBOSE, "%2d %s", statcode, error);
				//}
			}

			goto done_header;
		}

		/* Exit on empty header.  */
		if (!*hdr)
		{
			free(hdr);
			break;
		}

		/* Try getting content-length.  */
		// if (contlen == -1 && !opt.ignore_length)
		{
			if (header_process (hdr, "Content-Length", header_extract_number,&contlen))
			{
				assert(0);
				goto done_header;
			}
		}
		/* Try getting content-type.  */
		// if (!type)
		{
			if (header_process (hdr, "Content-Type", http_process_type, &type))
			{
				goto done_header;
			}
		}
		/* Try getting location.  */
		// if (!hs->newloc)
		{
			if (header_process (hdr, "Location", header_myStrdup, &hs->newloc))
			{
				goto done_header;
			}
		}
		/* Try getting last-modified.  */
		// if (!hs->remote_time)
		{
			if (header_process (hdr, "Last-Modified", header_myStrdup,&hs->remote_time))
			{
				goto done_header;
			}
		}
		/* Try getting www-authentication.  */
		// if (!authenticate_h)
		{
			if (header_process (hdr, "WWW-Authenticate", header_myStrdup,&authenticate_h))
			{
				goto done_header;
			}
		}
		/* Check for accept-ranges header.  If it contains the word
		`none', disable the ranges.  */
		//if (*dt & ACCEPTRANGES)
		{
			int nonep;
			if (header_process (hdr, "Accept-Ranges", http_process_none, &nonep))
			{
				if (nonep)
				{
					//*dt &= ~ACCEPTRANGES;
					oren_ish_shalom = 3;
				}
				goto done_header;
			}
		}
		/* Try getting content-range.  */
		//if (contrange == -1)
		{
			struct http_process_range_closure closure;
			if (header_process (hdr, "Content-Range", http_process_range, &closure))
			{
				contrange = closure.first_byte_pos;
				goto done_header;
			}
		}
		/* Check for keep-alive related responses. */
		//if (!inhibit_keep_alive)
		{
			/* Check for the `Keep-Alive' header. */
			//if (!http_keep_alive_1)
			//{
				if (header_process (hdr, "Keep-Alive", header_exists,&http_keep_alive_1))
				{
					goto done_header;
				}
			//}
		}
		/* Check for `Connection: Keep-Alive'. */
		//if (!http_keep_alive_2)
		{
			if (header_process (hdr, "Connection", http_process_connection,&http_keep_alive_2))
			{
				goto done_header;
			}
	    }
		done_header:
			oren_ish_shalom = 9;
    }
	return 0;
}


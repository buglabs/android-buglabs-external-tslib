#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "tslib.h"

#define BUF_SIZE 512

struct tssetting *ts_setting(const char *filename)
{
	struct tssetting *tset;
	char buf[BUF_SIZE], *p;
	int line = 0;

	/* try to open filename */
	FILE *file = fopen(filename, "r");
	if (file == NULL) {
		perror("Failed to open settings file");
		return NULL;
	} else {
		/* we can open filename, lets allocate tset! */
		tset = malloc(sizeof(struct tssetting));
		if (tset)
		{
			memset(tset, 0, sizeof(struct tssetting));
		} else {
			return NULL;
		}
	}

	if (file != NULL)
	{
		buf[BUF_SIZE - 2] = '\0';
		while ((p = fgets(buf, BUF_SIZE, file)) != NULL) {
			char *e, *tok;
			char delim[] = "=";
			
			line++;

			/* chomp */
			e = strchr(p, '\n');
			if (e)
				*e = '\0';
			
			/* ignore lines that are too long for our buffer */
			if (buf[BUF_SIZE - 2] != '\0') {
				/* printf("%s: line %d too long\n", filename, line); */
				break;
			}

			/* get the lhs of delim */
			tok = strsep(&p, delim);

			/* ignore lines starting with '#' and blank lines */
			if (p==NULL || *tok == '#')
				continue;

			/* copy the rhs to struct->member */
			if (strcasecmp(tok, "TSLIB_TSDEVICE") == 0) {
				tset->tsdev = strdup(strsep(&p, delim));
			} else if (strcasecmp(tok, "TSLIB_CONSOLEDEVICE") == 0) {
				tset->condev = strdup(strsep(&p, delim));
			} else if (strcasecmp(tok, "TSLIB_FBDEVICE") == 0) {
				tset->fbdev = strdup(strsep(&p, delim));
			} else if (strcasecmp(tok, "TSLIB_CALIBFILE") == 0) {
				tset->calfile = strdup(strsep(&p, delim));
			} else if (strcasecmp(tok, "TSLIB_CONFFILE") == 0) {
				tset->conffile = strdup(strsep(&p, delim));
			} else if (strcasecmp(tok, "TSLIB_PLUGINDIR") == 0) {
				tset->plugdir = strdup(strsep(&p, delim));
			} else {
				/* unknown line... ignoring */
				continue;
			}
		}
		fclose(file);
	}
	return tset;
}

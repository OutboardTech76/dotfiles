/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static int centered = 0;                    /* -c option; centers dmenu on screen */
static int textbox = 0;                     /* -t option; disable textbox, don't show it and don't record text*/
static int min_width = 500;                    /* minimum width when centered */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"monospace:size=10"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { "#bbbbbb", "#222222" },
	[SchemeSel] = { "#eeeeee", "#005577" },
	[SchemeOut] = { "#000000", "#00ffff" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 0;
static unsigned int lineheight = 0;         /* -h option; minimum height of a menu line     */

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
static unsigned int border_width = 0;


/* XResources */
ResourcePref resources[] = {
    {"font",              STRING,     &fonts[0] },
    {"normBg",            STRING,     &colors[SchemeNorm][ColBg] },
    {"normFg",            STRING,     &colors[SchemeNorm][ColFg] },
    {"selBg",             STRING,     &colors[SchemeSel][ColBg] },
    {"selFg",             STRING,     &colors[SchemeSel][ColFg] },
    {"outBg",             STRING,     &colors[SchemeOut][ColBg] },
    {"outFg",             STRING,     &colors[SchemeOut][ColFg] },
    {"border",            INTEGER,    &border_width }


};



# Note: we must explicitly list all songs in the "examples" dir... A shell glob
# only works here if "bash" is the default system shell (grumble, grumble).
EXTRA_DIST = chordii.spec \
	examples/everybody-hurts.cho examples/love-me-tender.cho \
	examples/swing-low.cho \
	windows/config.h windows/getopt.h windows/getopt.c windows/makefile
SUBDIRS = src man

dist-hook: ChangeLog
ChangeLog: configure.ac
	git log --stat --name-only --date=short --abbrev-commit > ChangeLog

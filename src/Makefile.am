## Process this file with automake to produce Makefile.in
common = chordii.h common.c getopt.h
bin_PROGRAMS = chordii a2crd
chordii_SOURCES = $(common) chordii.c xpose.c iso.c grid.c getopt.c toc.c
a2crd_SOURCES = $(common) a2crd.c
TESTS = test/above.sh test/below.sh test/passthrough.sh
EXTRA_DIST = $(TESTS) \
	test/data/above.expected test/data/above.input \
	test/data/below.expected test/data/below.input \
	test/data/passthrough.expected test/data/passthrough.input

## Process this file with automake to produce Makefile.in
common = chordie.h common.c
noinst_HEADERS = patchlevel.h
bin_PROGRAMS = chordie a2crd
chordie_SOURCES = $(common) chordie.c xpose.c iso.c grid.c getopt.c toc.c
a2crd_SOURCES = $(common) a2crd.c
chordie_LDADD = $(LIBOBJS)
a2crd_LDADD = $(LIBOBJS)

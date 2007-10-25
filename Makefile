# if you are compiling under DOS, you may have to replace all the ".o" extension
# by ".obj"
# Select the required paper size for your printer
PAPERSIZE = US
#PAPERSIZE = A4

# If your system does not have a getopt fonction, uncomment the next line
#GETOPT = getopt.o

# Use a ansi or K&R compiler
CC = cc 
CFLAGS = -D$(PAPERSIZE) -g

# where to put the resulting program
BINDIR = /usr/local/bin

# where to put the man page
MANDIR = /usr/man
MANEXT = l

# You should not have to change anything below this line

# name of the program
PROGRAMS = chordie  a2crd

INCL = chordie.h getopt.h patchlevel.h
SRC = common.c xpose.c iso.c chordie.c grid.c getopt.c toc.c chordie.man Makefile a2crd.c
OBJ = common.o xpose.o iso.o chordie.o grid.o toc.o  ${GETOPT}
SONGS = songs/space-oddity songs/heaven songs/everybody-hurts
DOCS = README COPYING a2crd.man TODO
RELNAME = chordie36

all: $(PROGRAMS)

chordie : $(OBJ) Makefile
	$(CC) $(CFLAGS) -o $@ $(OBJ)

a2crd: a2crd.o Makefile
	$(CC) $(CFLAGS) -o $@ a2crd.o common.o
	
chordie.o  : chordie.h
common.o   : chordie.h
grid.o     : chordie.h
xpose.o	   : chordie.h
getopt.o   : getopt.h
toc.o	   : chordie.h

install : all
	cp $(PROGRAMS) $(BINDIR)
	rm -f $(MANDIR)/cat$(MANEXT)/chordie.$(MANEXT)
	cp chordie.man $(MANDIR)/man$(MANEXT)/chordie.$(MANEXT)
	chmod 666 $(MANDIR)/man$(MANEXT)/chordie.$(MANEXT)
	Cp a2crd.man $(MANDIR)/man$(MANEXT)/a2crd.$(MANEXT)
	chmod 666 $(MANDIR)/man$(MANEXT)/a2crd.$(MANEXT)
	
shar : $(SRC)
	rm -f $(RELNAME).part*
	shar -F -L 60 -o $(RELNAME).part $(SRC) $(INCL) $(SONGS) $(DOCS)

tar : $(SRC)
	tar cvf $(RELNAME).tar $(SRC) $(INCL) $(SONGS) $(DOCS)
	rm $(RELNAME).tar.Z
	compress -v $(RELNAME).tar

lint : $(SRC)
	lint $(SRC)

clean:
	rm -f core *.o a2crd chordie


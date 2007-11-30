# This Makefile will look for files with a .cho extension in the current
# directory and process them into PostScript format using Chordie. To make a
# PDF, type "make SONGNAME.pdf". ps2pdf must be installed for this to work.


# derive all *.ps targets from *.cho
songs = $(patsubst %.cho,%.ps,$(wildcard *.cho))

all: $(songs)

# default pattern rule for engraving lead sheets (.cho -> .PS)
%.ps: %.cho
	chordie $< -o $@

# PDF generation is not automated (meaning only .ps files are created by
# default when running 'make' without arguments), but is simple enough if
# ps2pdf is installed. For example, "make elvira.pdf" will do just that.
%.pdf: %.ps
	ps2pdf $< $@

.PHONY: clean

clean:
	$(RM) *.ps *.pdf

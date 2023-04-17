SOURCEDIR=src
BUILDDIR=build
DATADIR=data
TEX=latexmk --output-directory=$(BUILDDIR)

DATA=$(wildcard $(DATADIR)/*)

cv.pdf: $(SOURCEDIR)/cv.tex $(DATA)
	@$(TEX) $<

publications.pdf: $(SOURCEDIR)/publications.tex $(DATA)
	@$(TEX) $<

all: cv.pdf publications.pdf

clean:
	rm $(BUILDDIR)/*

.PHONY: all clean

SOURCEDIR=src
BUILDDIR=build
DATADIR=data
TEX=latexmk -pdf --output-directory=$(BUILDDIR)

DATA=$(wildcard $(DATADIR)/*)

all: $(BUILDDIR)/cv.pdf $(BUILDDIR)/publications.pdf $(BUILDDIR)/cv_w_recomenders.pdf

clean:
	rm $(BUILDDIR)/*

cv.pdf: $(SOURCEDIR)/cv.tex $(DATA)
	@$(TEX) $<

$(BUILDDIR)/%.pdf: $(SOURCEDIR)/cv.tex $(DATA)
	@$(TEX) $<

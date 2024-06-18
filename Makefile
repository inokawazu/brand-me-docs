.PHONY: all clean

SOURCEDIR=src
BUILDDIR=build
DATADIR=data
TEX=latexmk -pdf --output-directory=$(BUILDDIR)

DATA=$(wildcard $(DATADIR)/*)
SRC_FILES=$(wildcard $(SOURCEDIR)/*)

all: $(BUILDDIR)/cv.pdf $(BUILDDIR)/publications.pdf $(BUILDDIR)/cv_w_recomenders.pdf

clean:
	rm $(BUILDDIR)/*

$(BUILDDIR)/%.pdf: $(SOURCEDIR)/%.tex $(DATA) $(SRC_FILES)
	@$(TEX) $<

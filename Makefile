.PHONY: all clean

SOURCEDIR=src
BUILDDIR=build
DATADIR=data
TEX=latexmk -pdf --output-directory=$(BUILDDIR)

DATA=$(wildcard $(DATADIR)/*)
SRC_FILES=$(wildcard $(SOURCEDIR)/*)

all: $(BUILDDIR)/cv.pdf $(BUILDDIR)/publications.pdf

clean:
	rm $(BUILDDIR)/*

$(BUILDDIR)/%.pdf: $(SOURCEDIR)/%.tex $(DATA) $(SRC_FILES)
	mkdir -p $(BUILDDIR)
	@$(TEX) $<

.PHONY: all clean

SOURCEDIR=src
BUILDDIR=build
DATADIR=data
TEX=latexmk -pdf --output-directory=$(BUILDDIR)

DATA_FILES=$(wildcard $(DATADIR)/*)
SRC_FILES=$(wildcard $(SOURCEDIR)/*)

all: $(BUILDDIR)/cv.pdf $(BUILDDIR)/publications.pdf

clean:
	rm $(BUILDDIR)/*

$(BUILDDIR)/%.pdf: $(SOURCEDIR)/%.tex $(DATA_FILES) $(SRC_FILES)
	mkdir -p $(BUILDDIR)
	@$(TEX) $<

publish: $(BUILDDIR)/cv.pdf $(BUILDDIR)/publications.pdf
	gh release create "v$(date +%Y%m%d)" --latest=true --generate-notes $(BUILDDIR)/cv.pdf $(BUILDDIR)/publications.pdf

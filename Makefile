SOURCEDIR=src
BUILDDIR=build
DATADIR=data
TEX=pdflatex --output-directory=$(BUILDDIR) -interaction nonstopmode

cv.pdf: $(SOURCEDIR)/cv.tex $(wildcard $(DATADIR)/*)
	@$(TEX) $<

publications.pdf: $(SOURCEDIR)/publications.tex $(wildcard $(DATADIR)/*)
	@$(TEX) $<

all: cv.pdf publications.pdf

clean:
	rm $(BUILDDIR)/*

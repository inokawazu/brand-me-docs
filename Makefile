SOURCEDIR=src
BUILDDIR=build
DATADIR=data
TEX=lualatex --output-directory=$(BUILDDIR) -interaction nonstopmode

cv.pdf: $(SOURCEDIR)/cv.tex $(wildcard $(DATADIR)/*)
	@$(TEX) $<

publications.pdf: $(SOURCEDIR)/publications.tex $(wildcard $(DATADIR)/*)
	@$(TEX) $<

all: cv.pdf publications.pdf cover.pdf

cover.pdf: $(SOURCEDIR)/cover.tex $(wildcard $(DATADIR)/*)
	@$(TEX) $<

clean:
	rm $(BUILDDIR)/*

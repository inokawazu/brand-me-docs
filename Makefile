SOURCEDIR=src
BUILDDIR=build
DATADIR=data
TEX=pdflatex --output-directory=$(BUILDDIR) -interaction nonstopmode

cv.pdf: $(SOURCEDIR)/cv.tex $(wildcard $(DATADIR)/*)
	@$(TEX) $<

publications.pdf: $(SOURCEDIR)/publications.tex $(wildcard $(DATADIR)/*)
	@$(TEX) $<

research_statement.pdf: $(SOURCEDIR)/research_statement.tex $(wildcard $(DATADIR)/*)
	@$(TEX) $<

research_proposal.pdf: $(SOURCEDIR)/research_proposal.tex $(wildcard $(DATADIR)/*)
	@$(TEX) $<

all: cv.pdf publications.pdf research_statement.pdf research_proposal.pdf

clean:
	rm $(BUILDDIR)/*

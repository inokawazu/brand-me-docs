SOURCEDIR=src
BUILDDIR=build
DATADIR=data
TEX=pdflatex --output-directory=$(BUILDDIR) -interaction nonstopmode

cv.pdf: $(SOURCEDIR)/cv.tex $(wildcard $(DATADIR)/*)
	@$(TEX) $<

clean:
	rm $(BUILDDIR)/*

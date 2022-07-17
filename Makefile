SOURCEDIR=src
BUILDDIR=build
TEX=pdflatex --output-directory=$(BUILDDIR) -interaction nonstopmode

cv.pdf: $(SOURCEDIR)/cv.tex
	$(TEX) $<

clean:
	rm $(BUILDDIR)/*

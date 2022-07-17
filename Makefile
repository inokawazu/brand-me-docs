SOURCEDIR=src
BUILDDIR=build
TEX=pdflatex --output-directory=$(BUILDDIR)

cv.pdf: $(SOURCEDIR)/cv.tex
	$(TEX) $<

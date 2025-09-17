# Makefile for Level 2 Student Manual

MAIN = student-manual
TEX_FILES = $(MAIN).tex
PDF_FILES = $(MAIN).pdf

.PHONY: all clean

all: $(PDF_FILES)

$(MAIN).pdf: $(TEX_FILES)
	pdflatex $(MAIN).tex
	pdflatex $(MAIN).tex  # Run twice for cross-references

clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.synctex.gz *.fdb_latexmk *.fls *.bbl *.blg

distclean: clean
	rm -f $(PDF_FILES)
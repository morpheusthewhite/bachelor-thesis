.PHONY : clean

LATEX_OPTS=--shell-escape

MAIN_NAME=thesis
MAIN_TEX=$(MAIN_NAME).tex

BIBLIOGRAPHY = ref.bib

all: thesis

thesis: $(MAIN_TEX) $(BIBLIOGRAPHY)
	pdflatex $(LATEX_OPTS) $(MAIN_TEX)
	biber $(MAIN_NAME)
	pdflatex $(LATEX_OPTS) $(MAIN_TEX) 

clean:
	rm -f *.aux *.log *.out *.synctex.* *.fls *_latexmk
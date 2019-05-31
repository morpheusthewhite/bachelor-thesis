.PHONY : clean

MAIN_TEX = thesis.tex

all: thesis

thesis: $(MAIN_TEX)
	pdflatex $(MAIN_TEX)

clean:
	rm -f *.aux *.log *.out *.synctex.* *.fls *_latexmk
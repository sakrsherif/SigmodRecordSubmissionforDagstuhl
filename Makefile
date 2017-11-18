all: main.pdf

main.pdf: *.tex biblio.bib
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex

clean:
	-rm -f main.pdf
	-rm -f *.aux *.dvi *.log *.bbl *.blg *.toc *.out *.bak
	-rm -f *~

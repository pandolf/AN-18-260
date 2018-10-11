.PHONY: all, clean ,one

QuarkGluon.pdf: QuarkGluon.tex
	pdflatex --shell-escape -interaction nonstopmode QuarkGluon.tex
	bibtex QuarkGluon
	pdflatex --shell-escape -interaction nonstopmode QuarkGluon.tex
	pdflatex --shell-escape -interaction nonstopmode QuarkGluon.tex
QuarkGluon.aux: QuarkGluon.tex
	pdflatex --shell-escape -interaction nonstopmode QuarkGluon.tex

QuarkGluon.bbl: QuarkGluon.aux
	bibtex QuarkGluon 
one:
	pdflatex --shell-escape  QuarkGluon.tex

clean:
	rm Immagini/Converted/*
	rm QuarkGluon.{pdf,toc,aux,log}

all:


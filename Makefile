.PHONY: all clean reallyclean

all: paper.pdf

paper.pdf: paper.tex citations.bib sigplanconf.cls
	pdflatex $< && bibtex paper && pdflatex $< && pdflatex $< 

clean:
	-rm -f *.aux *.log *.bbl *.blg *.out

reallyclean: clean
	-rm -f paper.pdf

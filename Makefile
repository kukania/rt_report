MAIN		= report

all: pdf

pdf: ${MAIN}.tex
	pdflatex ${MAIN}.tex

bibtex:
	pdflatex ${MAIN}.tex
	bibtex ${MAIN}.aux
	pdflatex ${MAIN}.tex
	pdflatex ${MAIN}.tex

clean:
	rm -f ./*.aux~
	rm -f ./*.tex~
	rm -f ./${MAIN}.aux
	rm -f ./${MAIN}.log
	rm -f ./${MAIN}.dvi
	rm -f ./${MAIN}.ps
	rm -f ./${MAIN}.pdf

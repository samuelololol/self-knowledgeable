SRC = $(shell ls *.tex)
PDF = $(SRC:.tex=.pdf)
.PHONY = all clean 

all:$(SRC)
	@pdflatex slide.tex
	@pdflatex slide.tex
	@rm -rf *.aux *.log *.nav *.out *.snm *.toc

clean:
	rm -rf $(PDF) *.aux *.log *.nav *.out *.snm *.toc


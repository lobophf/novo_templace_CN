compile: 
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex
	rm -rf *.blg *.log *.spl *.aux *.out
	
run:
	evince paper.pdf

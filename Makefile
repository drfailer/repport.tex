pdf: main.tex refs.bib
	pdflatex -shell-escape main.tex
	makeglossaries main
	biber main
	pdflatex -shell-escape main.tex
	pdflatex -shell-escape main.tex


clean:
	rm -rf *.log *.aux *.dvi *.bbl *.blg *.run.xml *.bcf *.out *.acn *.acr \
		*.alg *.atoc *.glg *.glo *.gls *.ist *.lof *.lol *.lot *.toc *.wrt \
		*.pyg _minted-main

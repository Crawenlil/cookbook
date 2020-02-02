filename=cookbook

pdf:
	pdflatex -shell-escape ${filename}
	pdflatex -shell-escape ${filename}

read:
	evince ${filename}.pdf &

clean:
	bash -c "rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg,lof,toc}"

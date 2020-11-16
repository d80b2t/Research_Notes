
TEXFILE=git_github_notes
default: all

# just run it


bib: 
	bibtex ${TEXFILE}

all :
	latex  ${TEXFILE}
	latex  ${TEXFILE}
#	bibtex ${TEXFILE}
#	bibtex ${TEXFILE}
#	bibtex ${TEXFILE}
	latex  ${TEXFILE}
	latex  ${TEXFILE}
	latex  ${TEXFILE}
	dvipdf ${TEXFILE}
	rm -f  ${TEXFILE}.aux
	rm -f  ${TEXFILE}.bbl
	rm -f  ${TEXFILE}.blg
	rm -f  ${TEXFILE}.dvi
	rm -f  ${TEXFILE}.log
	rm -f  ${TEXFILE}.out
	rm -f  ${TEXFILE}.toc
#	dvips ERQs_PaperI_rv2.dvi 
#	ps2pdf ERQs_PaperI_rv2.ps
#	rm -f ERQs_PaperI_rv2.ps
	open ${TEXFILE}.pdf

clean:
	rm -f \
	${TEXFILE}.dvi \
	${TEXFILE}.ps \
	${TEXFILE}.out \
	${TEXFILE}.aux \
	${TEXFILE}.bbl \
	${TEXFILE}.blg \
	${TEXFILE}.toc \
	${TEXFILE}.log 
#	${TEXFILE}.pdf 


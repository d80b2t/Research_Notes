
#TEXFILE=30DayChallenge_code
TEXFILE=NPRs_Python_ResourceNotes
#TEXFILE=Coursera
TEXFILE_TWO=NPRs_Python_ResourceNotes_Pandas


default: all

# just run it


all :
	pdflatex  ${TEXFILE}
	pdflatex  ${TEXFILE}
	pdflatex  ${TEXFILE}
#	dvipdf ${TEXFILE}
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

	pdflatex  ${TEXFILE_TWO}
	pdflatex  ${TEXFILE_TWO}
	pdflatex  ${TEXFILE_TWO}
#	dvipdf ${TEXFILE}
	rm -f  ${TEXFILE_TWO}.aux
	rm -f  ${TEXFILE_TWO}.bbl
	rm -f  ${TEXFILE_TWO}.blg
	rm -f  ${TEXFILE_TWO}.dvi
	rm -f  ${TEXFILE_TWO}.log
	rm -f  ${TEXFILE_TWO}.out
	rm -f  ${TEXFILE_TWO}.toc
#	dvips ERQs_PaperI_rv2.dvi 
#	ps2pdf ERQs_PaperI_rv2.ps
#	rm -f ERQs_PaperI_rv2.ps

	open ${TEXFILE}.pdf
	open ${TEXFILE_TWO}.pdf


bib:
	pdflatex  ${TEXFILE}
	pdflatex  ${TEXFILE}
	bibtex ${TEXFILE}
	bibtex ${TEXFILE}
	bibtex ${TEXFILE}
	pdflatex  ${TEXFILE}
	pdflatex  ${TEXFILE}
#	dvipdf ${TEXFILE}
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


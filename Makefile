PDFLATEX = pdflatex

all: cv.pdf cv_pt.pdf cv_pt_other.pdf

%.pdf: %.tex
	$(PDFLATEX) $<
	$(PDFLATEX) $<

clean:
	$(RM) cv.aux cv.log cv.out cv_pt.aux cv_pt.log cv_pt.out \
		cv_pt_other.aux cv_pt_other.log cv_pt_other.out

clean-all: clean
	$(RM) cv.pdf cv_pt.pdf cv_pt_other.pdf

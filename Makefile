PYTHON ?= python3
PDFLATEX ?= pdflatex

.PHONY: all verify pdf clean

all: verify pdf

verify:
	$(PYTHON) verify.py

pdf: paper.pdf

paper.pdf: paper.tex
	$(PDFLATEX) -interaction=nonstopmode -halt-on-error -no-shell-escape paper.tex
	$(PDFLATEX) -interaction=nonstopmode -halt-on-error -no-shell-escape paper.tex

clean:
	rm -f paper.aux paper.log paper.out paper.toc paper.fls paper.fdb_latexmk paper.pdf

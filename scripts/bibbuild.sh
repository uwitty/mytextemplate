#!/bin/bash
set -e -x

lualatex report.tex && \
BSTINPUTS=$BSTINPUTS:/usr/share/texmf/jbibtex/bst bibtexu report && \
lualatex report.tex && \
lualatex report.tex

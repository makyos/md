#!/bin/bash

LIB=./lib
SRC=./src
TARGET=./target

function PANDOC() {
    ${LIB}/pandoc-2.9.2.1/bin/pandoc \
        --standalone \
        --pdf-engine=${LIB}/wkhtmltox/bin/wkhtmltopdf \
        --css ${SRC}/css/github-markdown.css \
        --toc \
        --toc-depth=3 \
        --number-sections \
        --number-offset=0 \
        ${@}
}
        # --css ${CSS}/common.css

#cat body.md | grep '^#' > mokuji.md

PANDOC ${SRC}/body.md  -o ${TARGET}/body.pdf

# PANDOC mokuji.md -o ${ODIR}/mokuji.pdf --css ${CSS}/mokuji.css

# cat body.md | md2pdf \
#     --stylesheet css/github-markdown.css \
#     --stylesheet ./css/common.css \
#     > md.pdf





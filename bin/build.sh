#!/usr/bin/env bash

PDF_FILENAME=$(echo $1 | sed s/\.md$/.pdf/i)

pandoc -s $1 --to pdf -o dist/${PDF_FILENAME} --pdf-engine /usr/local/texlive/2023basic/bin/universal-darwin/lualatex -V colorlinks=true

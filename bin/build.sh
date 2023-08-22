#!/usr/bin/env bash

MD_PATH=$1
PDF_PATH=$2

pandoc -s ${MD_PATH}\
  -o ${PDF_PATH}\
  --pdf-engine /usr/local/texlive/2023basic/bin/universal-darwin/lualatex\
  -V colorlinks=true


#!/usr/bin/env bash

MD_FILENAME=${1##*/}
PDF_FILENAME="${MD_FILENAME%.*}.pdf"
SRC_DIR="src"
DIST_DIR="dist"

bin/build.sh "${SRC_DIR}/${MD_FILENAME}" "${DIST_DIR}/${PDF_FILENAME}"\
  && bin/open.sh "${DIST_DIR}/${PDF_FILENAME}"


#!/bin/sh

DATE=`date +%Y%m%d-%H%M%S`
CURRENT_DIR=`pwd`
cd ${CURRENT_DIR}/brew
mv Brewfile Brewfile.bk.${DATE}
brew bundle dump
echo "complete!"
echo "The newest Brewfile is here."
echo "=============================================================="
cat Brewfile
cd ${CURRENT_DIR}

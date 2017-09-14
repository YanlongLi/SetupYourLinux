#!/usr/bin/env bash

scriptdir="`dirname \"$0\"`"
for f in $scriptdir/bash/bash*; do
  fname=`basename $f`;
  [[ -f ~/.$fname ]] && cp -f $f ~/.$fname.orig;
  cp $f ~/.$fname;
done

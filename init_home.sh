#!/usr/bin/env bash

_dir_="`dirname \"$0\"`"
for f in $(find $_dir_/home/ -maxdepth 1 -type f); do
  fname=`basename $f`
  toname="$HOME/.$fname"
  [ -f $toname ] && diff $f $toname > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    cp -b --suffix=.bak -f "$f" "$toname" && echo -e "copy \e[1;32m$fname\e[0m done"
  fi
done

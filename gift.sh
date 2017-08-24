#!/bin/bash

cd ~/Desktop

args=("$@")
if [[ $# -eq 1 ]] ; then
  mkdir ${args[0]}
else
  mkdir default
fi

for file in * ;
do
  if [[ -d $file ]] ; then
    :
  else
    if [[ $# -eq 1 ]] ; then
      mv "$file" ${args[0]}
    else
      mv "$file" default
    fi
  fi
done

#!/bin/bash

cd ~/Desktop

args=("$@")
if [[ $# -ge 1 ]] ; then
  mkdir ${args[0]}
else
  mkdir default
fi

for file in * ;
do
  if [[ $# -eq 2 && ${args[1]} -eq "-d" ]]; then
      if [[ $# -ge 1 ]] ; then
        if [[ "$file" != "${args[0]}" ]]; then
          mv "$file" ${args[0]}
        fi
      else
        mv "$file" default
      fi
  else
    if [[ -d $file ]] ; then
      :
    else
      if [[ $# -ge 1 ]] ; then
        mv "$file" ${args[0]}
      else
        mv "$file" default
      fi
    fi
  fi
done

#!/bin/bash

cd ~/Desktop
mkdir gift
for file in * ;
do
  if [[ -d $file ]] ; then
    :
  else
    mv "$file" gift;
  fi
done

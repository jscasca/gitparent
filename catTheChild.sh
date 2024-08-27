#!/bin/sh

for FILE in ./child*/version.txt;
do
  tmpStr="${FILE%/*}"; printf '### Dir %s\n' "${tmpStr##*/child}"
  cat "$FILE"; printf '\n'
done
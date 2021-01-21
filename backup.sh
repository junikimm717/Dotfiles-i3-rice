#!/bin/bash
ls -a | grep -vE "$(cat keep.txt | sed 's/\./\\\./g')" | xargs -r rm -rf
mkdir -p ./backup/.config
for F in $(cat files.txt); do
cp -r ~/$F ./backup/$F
done

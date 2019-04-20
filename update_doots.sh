#!/bin/bash

git pull

echo "Copying bash files"
cp     .bash_aliases ~
echo "Bash files done"

echo "Copying vim files"
cp  -r .vim          ~
cp     .viminfo      ~
cp     .vimrc        ~
echo "Vim files done"

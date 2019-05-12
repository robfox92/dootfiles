#!/bin/bash

mkcdir () {
  mkdir $1;
  cd $1;
}

alias df='df -x"squashfs"'

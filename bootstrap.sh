#!/bin/bash

git submodule update --init --recursive
if [ -e ../.vimrc -a ! ../.vimrc -ef .vimrc ]
then
  echo "Backuping current .vimrc to .vimrc~."
  mv ../.vimrc ../.vimrc~
elif [ ! -e ../.vimrc ]
then
  DIRNAME=$(basename $(pwd))
  cd .. && ln -s $DIRNAME/.vimrc && cd -
fi

./build.sh

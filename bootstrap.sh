#!/bin/sh

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
# Command-T
cd bundle/Command-T/ruby/command-t && ruby extconf.rb && make && cd -
# YouCompleteMe
cd bundle/YouCompleteMe && ./install.sh --clang-completer && cd -
vim +Helptags +q

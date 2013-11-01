#!/bin/sh

git submodule update --init --recursive
DIRNAME=$(basename $(pwd))
cd .. && ln -s $DIRNAME/.vimrc && cd -
# Command-T
cd bundle/Command-T/ruby/command-t && ruby extconf.rb && make && cd -
# YouCompleteMe
cd bundle/YouCompleteMe && ./install.sh --clang-completer && cd -
vim +Helptags +q

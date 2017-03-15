#!/bin/bash

# Command-T
cd bundle/Command-T/ruby/command-t && ruby extconf.rb && make && cd -

# YouCompleteMe
cd bundle/YouCompleteMe && ./install.py --clang-completer --gocode-completer && cd -
vim +Helptags +q

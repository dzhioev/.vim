#!/bin/bash

# Command-T
( cd bundle/Command-T/ruby/command-t && ruby extconf.rb && make )

# YouCompleteMe
( cd bundle/YouCompleteMe && ./install.py --clang-completer --gocode-completer )
vim +Helptags +q

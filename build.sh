#!/bin/bash

# Command-T
( cd bundle/Command-T/ruby/command-t && ruby extconf.rb && make )

vim +Helptags +q
echo "you need to run ':CocInstall coc-clangd coc-json' in vim"

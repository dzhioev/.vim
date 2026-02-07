#!/bin/bash

# Command-T
if [[ "$(uname -s)" == "Darwin" ]]; then
  RUBY=/opt/homebrew/opt/ruby/bin/ruby
else
  RUBY=ruby
fi
( cd bundle/Command-T/ruby/command-t/ext/command-t && $RUBY extconf.rb && make )

vim +Helptags +q

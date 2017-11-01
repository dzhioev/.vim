#!/bin/sh

current_dir=.

while [ \( ! "$current_dir" -ef "$HOME" \) -a \( ! "$current_dir" -ef "/" \) ]
do
  if [ \( -f "$current_dir/CMakeLists.txt" \) -a  \( -f "$current_dir/build_release/Makefile" \) ]
  then
    make -C "$current_dir/build_release" "$@"
    break
  fi
  current_dir="$current_dir/.."
done

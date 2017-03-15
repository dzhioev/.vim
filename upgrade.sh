#!/bin/bash

git submodule foreach git fetch
git submodule foreach git checkout origin/HEAD
git submodule foreach git submodule update --init --recursive
./build.sh

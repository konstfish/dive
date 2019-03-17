#!/usr/bin/env bash

echo "dive widget installer"

git clone https://github.com/lavoiesl/osx-cpu-temp
cd osx-cpu-temp
make
mv osx-cpu-temp ../scripts

mkdir -p $HOME/Library/Application\ Support/Übersicht/widgets/dive
mv * $HOME/Library/Application\ Support/Übersicht/widgets/dive/

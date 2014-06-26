#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -d ~/bin ]
then
  ln -s $DIR/bin $HOME/bin
fi
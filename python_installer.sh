#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo 'Create symbolic links for .pyrc'
if [ ! -f ~/.pyrc ]
then
  ln -s $DIR/.pyrc ~/.pyrc
else
  echo '  ~/.pyrc already exists'
fi

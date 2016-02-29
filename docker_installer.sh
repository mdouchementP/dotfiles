#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pause() {
  echo 'Push ENTER to continue'
  read
}

echo 'Install docker on your machine'

pause


echo 'Create symbolic links for dockerfunc'
if [ ! -f ~/.dockerfunc ]
then
  ln -s $DIR/.dockerfunc ~/.dockerfunc
else
  echo '  ~/.dockerfunc already exists'
fi

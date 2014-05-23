#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pause() {
  echo 'Push ENTER to continue'
  read
}

echo 'Install jazz_hands (pry) on your machine'
echo ' gem install jazz_hands'


pause


echo 'Create symbolic links for pryrc.'
ln -s $DIR/.pryrc ~/.pryrc
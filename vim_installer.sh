#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pause() {
  echo 'Push ENTER to continue'
  read
}

echo 'Install vim on your machine'
echo ' Ubuntu: apt-get install vim'


pause


echo 'Create symbolic links for vimrc & plugins'
ln -s $DIR/.vimrc ~/.vimrc
ln -s $DIR/vim/rcfiles ~/.vim/rcfiles
ln -s $DIR/vim/rcplugins ~/.vim/rcplugins


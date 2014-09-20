#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pause() {
  echo 'Push ENTER to continue'
  read
}

echo 'Install neovim on your machine'
echo '  https://github.com/neovim/neovim/wiki/Installing'


pause


echo 'Create symbolic links for tmux'
if [ ! -f ~/.tmux.conf ]
then
  ln -s $DIR/.tmux.conf ~/.tmux.conf
else
  echo '  ~/.tmux.conf already exists'
fi

echo 'Create symbolic links for nvimrc & plugins'
if [ ! -f ~/.nvimrc ]
then
  ln -s $DIR/.vimrc ~/.nvimrc
else
  echo '  ~/.nvimrc already exists'
fi

if [ ! -d ~/.nvim/rcfiles ]
then
  ln -s $DIR/vim/rcfiles ~/.nvim/rcfiles
else
  echo '  ~/.nvim/rcfiles already exists'
fi

if [ ! -d ~/.nvim/rcplugins ]
then
  ln -s $DIR/vim/rcplugins ~/.nvim/rcplugins
else
  echo '  ~/.nvim/rcplugins already exists'
fi

# ln -s $DIR/vim/snippets ~/.vim/snippets
# ln -s $DIR/bin/* ~/.bin/*

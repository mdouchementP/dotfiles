#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pause() {
  echo 'Push ENTER to continue'
  read
}

echo 'Install vim on your machine'
echo ' Ubuntu: apt-get install tmux'
echo 'Install vim on your machine'
echo ' Ubuntu: apt-get install vim'


pause


echo 'Create symbolic links for tmux'
if [ ! -f ~/.tmux.conf ]
then
  ln -s $DIR/.tmux.conf ~/.tmux.conf
else
  echo '  ~/.tmux.conf already exists'
fi

echo 'Restore vertical split in Tmux if Byobu is used'
if [ -f ~/.byobu/keybindings.tmux ] && [ $(grep -c -F "bind '\"' split-window -v" ~/.byobu/keybindings.tmux) -eq 0 ]
then
  echo "bind '\"' split-window -v" >> ~/.byobu/keybindings.tmux
else
  echo '  ~/.byobu/keybindings.tmux does not exist or binding is already setted'
fi

echo 'Create symbolic links for vimrc & plugins'
if [ ! -f ~/.vimrc ]
then
  ln -s $DIR/.vimrc ~/.vimrc
else
  echo '  ~/.vimrc already exists'
fi

if [ ! -d ~/.vim/rcfiles ]
then
  ln -s $DIR/vim/rcfiles ~/.vim/rcfiles
else
  echo '  ~/.vim/rcfiles already exists'
fi

if [ ! -d ~/.vim/rcplugins ]
then
  ln -s $DIR/vim/rcplugins ~/.vim/rcplugins
else
  echo '  ~/.vim/rcplugins already exists'
fi

# ln -s $DIR/vim/snippets ~/.vim/snippets
# ln -s $DIR/bin/* ~/.bin/*

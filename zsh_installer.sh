#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pause() {
  echo 'Push ENTER to continue'
  read
}

echo 'Install zsh on your machine'
echo ' Ubuntu: apt-get install zsh'

echo
echo 'Install Oh My Zsh plugins'
echo 'Look this link for install: https://github.com/robbyrussell/oh-my-zsh'


pause


echo 'Create symbolic links for zshrc, profile & theme (git + rbenv)'
if [ ! -f ~/.zshrc ]
then
  ln -s $DIR/.zshrc ~/.zshrc
else
  echo '  ~/.zshrc already exists'
fi

if [ ! -f ~/.profile ]
then
  ln -s $DIR/.profile ~/.profile
else
  echo '  ~/.profile already exists'
fi

if [ ! -f ~/.oh-my-zsh/themes/fragan.zsh-theme ]
then
  ln -s $DIR/.oh-my-zsh/themes/fragan.zsh-theme ~/.oh-my-zsh/themes/
else
  echo '  ~/.oh-my-zsh/themes/fragan.zsh-theme already exists'
fi

if [ ! -f ~/.gitconfig ]
then
  ln -s $DIR/.gitconfig ~/.gitconfig
else
  echo '  ~/.gitconfig already exists'
fi

if [ ! -f ~/.rspec ]
then
  ln -s $DIR/.rspec ~/.rspec
else
  echo '  ~/.rspec already exists'
fi

if [ ! -f ~/.gemrc ]
then
  ln -s $DIR/.gemrc ~/.gemrc
else
  echo '  ~/.gemrc already exists'
fi

if [ ! -f ~/.gorc ]
then
  ln -s $DIR/.gorc ~/.gorc
else
  echo '  ~/.gorc already exists'
fi

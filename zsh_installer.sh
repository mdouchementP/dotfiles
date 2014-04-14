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
ln -s $DIR/.zshrc ~/.zshrc
ln -s $DIR/.profile ~/.profile
ln -s $DIR/.oh-my-zsh/themes/fragan.zsh-theme ~/.oh-my-zsh/themes/
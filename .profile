# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
# if [ -n "$BASH_VERSION" ]; then
#     # include .bashrc if it exists
#     if [ -f "$HOME/.bashrc" ]; then
# 	. "$HOME/.bashrc"
#     fi
# fi


# User bin
if [ -d ~/bin ]
then
  export PATH=$PATH:$HOME/bin
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

if [ -e /lib/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

alias ll='ls -alh'
alias mjson='echo $1 | python -mjson.tool'

# Increase prompt history
export HISTFILESIZE=10000 # number of lines in the .bash_history, .zsh_history, etc.
export HISTSIZE=10000 # number of lines in the shell instance

# rbenv
export RBENV_ROOT="${HOME}/.rbenv"

if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi

alias stoken="export SECRET_TOKEN='012345678901234567890123456789'"

export EDITOR='vim'

# Foce git to us US locale
alias git='LANG=en_US git'

# ST3 config
export PATH=$PATH:$HOME/.config/sublime-text-3/path

# Extra Configuration
if [ -f ~/.extrarc ]
then
  . "$HOME/.extrarc"
fi

# pyenv
if [ -f ~/.pyrc ]
then
  . "$HOME/.pyrc"
fi

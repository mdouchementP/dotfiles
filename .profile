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

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

alias ll='ls -alh'

# Increase prompt history
export HISTFILESIZE=10000 # number of lines in the .bash_history, .zsh_history, etc.
export HISTSIZE=10000 # number of lines in the shell instance

# Ruby EBenv
export RBENV_ROOT="${HOME}/.rbenv"

if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi

alias bn="bundle exec "



# ST3 config
export PATH=$PATH:$HOME/.config/sublime-text-3/path


alias stoken="export SECRET_TOKEN='012345678901234567890123456789'"

alias tssh="ssh -L 6379:PC-DEV-01:6379 sharefs@PC-DEV-01"


# Karma
export CHROME_BIN="/usr/bin/chromium-browser"
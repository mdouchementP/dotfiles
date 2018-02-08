# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# User bin
if [ -d ~/bin ]
then
  export PATH=$PATH:$HOME/bin
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

if [ "$(TERM=xterm-256color tput colors)" = "256" ]; then
  export TERM='xterm-256color'
elif [ "$(TERM=gnome-256color tput colors)" = "256" ]; then
  export TERM='gnome-256color'
else
  export TERM='xterm-color'
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

alias ll='ls -alh'
alias mjson='echo $1 | python -mjson.tool'
# With python pygments
alias ccat='pygmentize -O style=monokai -f console256 -g'

# Increase prompt history
export HISTFILESIZE=10000 # number of lines in the .bash_history, .zsh_history, etc.
export HISTSIZE=10000 # number of lines in the shell instance

# Sane SSH_AUTH_SOCK handling for Screen and Tmux, so that new SSH agents created by subsequent logons are still usable.
# https://gist.github.com/admackin/4507371
_ssh_auth_save() {
  rm "${HOME}/.ssh/ssh-auth-sock.${HOSTNAME}"
  sleep 1
  ln -sf "$SSH_AUTH_SOCK" "${HOME}/.ssh/ssh-auth-sock.${HOSTNAME}"
}
alias screen='_ssh_auth_save ; export HOSTNAME=$(hostname) ; screen'
alias tmux='_ssh_auth_save ; export HOSTNAME=$(hostname) ; tmux'

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

eval "$(direnv hook zsh)"

# Extra Configuration
if [ -f ~/.extrarc ]
then
  . "${HOME}/.extrarc"
fi

# Golang (defines GOPATH variable)
if [ -f ~/.gorc ]
then
  . "${HOME}/.gorc"
fi

# Python
if [ -f ~/.pyrc ]
then
  . "${HOME}/.pyrc"
fi

# Docker Configuration
if [ -f ~/.dockerfunc ]
then
  . "${HOME}/.dockerfunc"
fi

# Quick and dirty line displaying.
#   $1 -> line number
#   $2 -> first file
#   $3 -> second file
# Usage:
#   lshow 4 file1.txt file2.txt
lshow() {
  head -n $1 $2 | tail -n 1 && head -n $1 $3 | tail -n 1
}
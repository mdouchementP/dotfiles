![Vim](http://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Vimlogo.svg/60px-Vimlogo.svg.png)
![neovim](https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-logo.png)

Clone dotfiles repository where you want.

Run very basic scripts `zsh_installer.sh` & `vim_installer` (or `nvim_installer.sh`).
> vim or nvim script will install tmux conf.
> - These script add support for Byobu (Tmux wrapper). Byobu can be easily installed then launch `byobu-ctrl-a` and select *Screen mode*, launch `byobu-select-backend` and select *tmux*.

```bash
# Install ZSH
$ chsh -s /bin/zsh
$ curl -L http://install.ohmyz.sh | sh
$ dotfiles/zsh_install.sh

# Install Vim & TMux
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
$ dotfiles/vim_install.sh

$ vim +BundleInstall

```

* [rbenv](https://github.com/fesplugas/rbenv-installer)
* [pyenv](https://github.com/yyuu/pyenv-installer)

# Font installation (Airline-Powerline)
## Links
* There are already some fonts in the font folder
* [https://github.com/Lokaltog/powerline-fonts](https://github.com/Lokaltog/powerline-fonts)
* [https://github.com/scotu/ubuntu-mono-powerline](https://github.com/scotu/ubuntu-mono-powerline)

## Tutorial
* [https://powerline.readthedocs.org/en/latest/installation/linux.html#font-installation](https://powerline.readthedocs.org/en/latest/installation/linux.html#font-installation)

# vim-instant-markdown installation
Go to [vim-instant-markdown](https://github.com/suan/vim-instant-markdown) repository and see installation dependencies.

# Ctags
## Installation

```bash
$ sudo apt-get install exuberant-ctags
```

* [Using ctags in Vim](http://amix.dk/blog/post/19329)
* [Using ctags in vim on RoR (shortcuts)](http://blog.bojica.com/2010/06/27/ctags-and-vim-for-ruby-on-rails-development)
* Configuration in `vim/rcfiles/vim-taglist`
 * Actually, it's only setted for Ruby on Rails


# GoLang
- Add in `~/.gorc` the following lines:
```bash
# Export packages directory (libraries)
export GOPATH="${HOME}/workspaces/golang"
export PATH=$PATH:$GOPATH/bin

alias gi='goop install'
alias gg='goop go'
alias ggr='goop go run'
alias ge='goop exec'
```

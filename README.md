![Vim](http://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Vimlogo.svg/60px-Vimlogo.svg.png)

Clone dotfiles repository where you want.

Run very basic scripts `zsh_installer.sh` & `vim_installer`.

```bash
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
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

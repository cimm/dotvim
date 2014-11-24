# dotVim

My Vim config in a [git repo](https://github.com/cimm/dotvim) to keep track of changes and easily get up and running on a new machine.

I try not to install too many plugins as I much rather learn a new Vim command if one exists. Have a look in the [/bundle](https://github.com/cimm/dotvim/tree/master/bundle) directory to see which plugins will be installed. I am using [Vundle](https://github.com/gmarik/Vundle.vim) to manage my plugins and most plugins are syntax highlighters for the different dialects I use.

This is a personal repository, I tend to drop or add stuff when I move from project to project. Feel free to use anything you see here but please fork the repo if you plan to build your Vim config on top of it.

Most of this is stolen from other people's `vimrc` files, thank you dear internet.

I mostly use [MacVim](https://code.google.com/p/macvim/) so most settings are only enabled in GUI mode and I like my terminal vim clean and simple.

## Installation

Install `git` if you don't have it, but you probably do.

    cd ~
    git clone http://github.com/cimm/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc

## Cheatsheet

Install Vundle plugins from the command line:

    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall

## Donations

Have a look at [sponsoring](http://www.vim.org/sponsor) Vim. Thank you [Bram](https://en.wikipedia.org/wiki/Bram_Moolenaar).

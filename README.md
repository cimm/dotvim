# dotVim

My Vim config in a [git repo](https://github.com/cimm/dotvim) to keep track of changes and easily get up and running on a new machine.

I try not to install too many plugins as I much rather learn a new Vim command if one exists. I am using [Plug](https://github.com/junegunn/vim-plug) to manage my plugins and most plugins are syntax highlighters for the different languages I use.

This is a personal repository, I tend to drop or add stuff when I move from project to project. Feel free to use anything you see here but please fork the repo if you plan to build your Vim config on top of it.

Most of this is stolen from other people's `vimrc` files, thank you dear internet.

## Installation

Install `git` if you don't have it, but you probably do. Also install the [Hack](https://github.com/source-foundry/Hack) font.

    cd ~
    git clone https://github.com/cimm/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc

## Cheatsheet

Install Plug from the command line:

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    vim +PlugInstall

## Donations

Have a look at [sponsoring](http://www.vim.org/sponsor) Vim. Thank you [Bram](https://en.wikipedia.org/wiki/Bram_Moolenaar).

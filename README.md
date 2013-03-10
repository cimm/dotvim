# Prerequisites

Install The Silver Searcher to replace `grep`, it's `ack` compatible and faster:

```sh
brew install ag
```

# Installation

```sh
cd ~
git clone http://github.com/cimm/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init --recursive
``` 

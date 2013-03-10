# Installation

```sh
cd ~
git clone http://github.com/cimm/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init --recursive
``` 
# Plugins

- [align](https://github.com/vim-scripts/Align): align statements
- [easymotion](https://github.com/Lokaltog/vim-easymotion): jump to any location in the buffer
- [solarized](https://github.com/altercation/vim-colors-solarized): the colorscheme
- [vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack): emacs's kill-ring
- [ctrlp.vim](https://github.com/kien/ctrlp.vim): full path fuzzy file finder
- [fugitive](https://github.com/tpope/vim-fugitive): the git wrapper
- [vim-coffee-script](https://github.com/kchmck/vim-coffee-script): syntax, indenting and compiling for CoffeeScript

# Extra

Install The Silver Searcher to replace `grep`, it's `ack` compatible and faster:

```sh
brew install ag
```

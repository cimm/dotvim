# Installation

```sh
cd ~
git clone http://github.com/cimm/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init --recursive
``` 
# Plugins

- [solarized](https://github.com/altercation/vim-colors-solarized): the colorscheme
- [vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack): emacs's kill-ring
- [ctrlp.vim](https://github.com/kien/ctrlp.vim): full path fuzzy file finder
- [fugitive](https://github.com/tpope/vim-fugitive): the git wrapper
- [vim-coffee-script](https://github.com/kchmck/vim-coffee-script): syntax, indenting and compiling for CoffeeScript
- [vim-markdown](https://github.com/plasticboy/vim-markdown): syntax highlighting for Markdown
- [ag.vim](https://github.com/rking/ag.vim): the silver searcher plugin
- [vim-jade](https://github.com/digitaltoad/vim-jade): jade syntax highlighting and indention

# The Silver Searcher

Install The Silver Searcher to replace `grep`, it's `ack` compatible and faster:

```sh
brew install ag
```

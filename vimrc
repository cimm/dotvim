call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set number
set hlsearch
set autoindent

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

if has("gui_running")
  set guioptions=egmrt
  colorscheme railscasts
  set guifont=Inconsolata:h15
  set fuoptions=maxvert,maxhorz
  set list
  set guioptions-=r
endif

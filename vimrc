call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set number
set hlsearch
set autoindent
set hidden

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" Hide swap files in netrw
let g:netrw_list_hide= '.*\.swp$'

" Remove whitespace on save for Ruby files
autocmd BufWritePre *.rb :%s/\s\+$//e

" Remap the arrow keys so I can't use them
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" GUI
if has("gui_running")
  let g:solarized_hitrail=1
  set listchars=tab:▸\ ,eol:¬
  set guioptions=egmrt
  set background=light
  colorscheme solarized
  set guifont=Inconsolata:h16
  set fuoptions=maxvert,maxhorz
  set list
  set guioptions-=r
endif

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

set listchars=tab:▸\ ,eol:¬

silent exe "g:flog_enable"

" Strip trailing white spaces
function! <SID>StripTrailingWhitespaces()
  let _s=@/
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  let @/=_s
  call cursor(l, c)
endfunction
map <leader>strip :call <SID>StripTrailingWhitespaces()<CR>

" Hide swap files in netrw
let g:netrw_list_hide= '.*\.swp$'

if has("gui_running")
  set guioptions=egmrt
  colorscheme railscasts
  set guifont=Inconsolata:h20
  set fuoptions=maxvert,maxhorz
  set list
  set guioptions-=r
endif

" Remap the arrow keys so I can't use them
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

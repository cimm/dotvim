call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set number
set autoindent
set hidden

" Searching
set hlsearch
set ignorecase
set smartcase " case-sensitive if search contains an uppercase character

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" Statusline with branch and line number
set statusline=
set statusline+=%{fugitive#statusline()[4:-2]}
set statusline+=\ %f\ %m\ %r
set statusline+=%=
set statusline+=%l/%L:%v
set statusline+=

" Hide swap files in netrw
let g:netrw_list_hide= '.*\.swp$'

" Remove whitespace on save for Ruby files
autocmd BufWritePre *.rb :%s/\s\+$//e

" Ledger syntax
au BufNewFile,BufRead *.ldg,*.ledger setf ledger | comp ledger

" Remap the arrow keys so I can't use them
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Autocorrect
abbr destory destroy
abbr clog console.log

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
  set macmeta
endif

" Highlight words
syntax enable
highlight TechWordsToAvoid ctermbg=red ctermfg=white guibg=#cc2222 guifg=white
match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however\|so,\|easy\|console.log/
autocmd BufWinEnter * match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however,\|so,\|easy\|console.log/
autocmd InsertEnter * match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however,\|so,\|easy\|console.log/
autocmd InsertLeave * match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however,\|so,\|easy\|console.log/
autocmd BufWinLeave * call clearmatches()

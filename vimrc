set nocompatible
syntax enable
filetype off

" Vundle plugin manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'                " vundle itself
Plugin 'altercation/vim-colors-solarized' " colorscheme
Plugin 'bling/vim-airline'                " fancy statusbar
Plugin 'scrooloose/syntastic'             " syntax checker
Plugin 'maxbrunsfeld/vim-yankstack'       " emacs style kill ring
Plugin 'kien/ctrlp.vim'                   " fuzzy file opener
Plugin 'tpope/vim-fugitive'               " git
Plugin 'kchmck/vim-coffee-script'         " coffeescript syntax highlighting
Plugin 'plasticboy/vim-markdown'          " markdown syntax highlighting
Plugin 'slim-template/vim-slim'           " slim templates syntax highlighting
Plugin 'ledger/vim-ledger'                " ledger syntax highlighting
Plugin 'yaymukund/vim-rabl'               " rabl syntax highlighting
Plugin 'xolox/vim-notes'                  " note taking
call vundle#end()
filetype plugin indent on

" General layout
set number        " line numbers
set list          " show special chars
set laststatus=2  " always show statusbar
set hidden        " hides unsaved file instead of closing
set autoindent
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

if has("gui_running")
  set macmeta " enable special keys on MacVim for vim-yankstack
  set guioptions-=r " hide scrollbars
  set go-=L " no scrollbars when opening a split window
  set guifont=Hack
end

" Remove whitespace on save for Ruby files
autocmd BufWritePre *.rb :%s/\s\+$//e

" Make CTRL+c identical to Esc (the double Esc prevents delays)
inoremap <C-c> <Esc><Esc>

" Hide swap files in netrw
let g:netrw_list_hide= '.*\.swp$'

" Searching
set hlsearch
set ignorecase
set smartcase " case-sensitive if search contains an uppercase character

" Autocorrect
abbr destory destroy
abbr clog console.log

" Solarized colorscheme
if has("gui_running")
  set background=light
  set listchars=tab:▸\ ,eol:¬
  colorscheme solarized
end

" Airline statusbar
if has("gui_running")
  let g:airline_powerline_fonts=1
end
set statusline+=%{fugitive#statusline()[4:-2]}
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Markdown syntax highlighting
let g:vim_markdown_folding_disabled=1

" Visual autocomplete for command menu
set wildmenu

" Highlight words
highlight TechWordsToAvoid ctermbg=red ctermfg=white guibg=#cc2222 guifg=white
match TechWordsToAvoid /console.log/
autocmd BufWinEnter * match TechWordsToAvoid /console.log/
autocmd InsertEnter * match TechWordsToAvoid /console.log/
autocmd InsertLeave * match TechWordsToAvoid /console.log/
autocmd BufWinLeave * call clearmatches()

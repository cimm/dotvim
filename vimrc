" Vundle plugin manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'altercation/vim-colors-solarized' " solarized colors
Plugin 'bling/vim-airline'                " fancy statusbar
Plugin 'chrisbra/csv.vim'                 " csv helper, does column sums
Plugin 'ctrlpvim/ctrlp.vim'               " fuzzy file opener
Plugin 'gmarik/Vundle.vim'                " vundle itself
Plugin 'junegunn/goyo.vim'                " focus mode
Plugin 'maxbrunsfeld/vim-yankstack'       " emacs style kill ring
Plugin 'mileszs/ack.vim'                  " ack integration
Plugin 'nixon/vim-vmath.git'              " simple excel style calculations
Plugin 'plasticboy/vim-markdown'          " markdown syntax highlighting
Plugin 'tpope/vim-fugitive'               " git
Plugin 'w0rp/ale'                         " syntastic like linter but async
call vundle#end()

set nocompatible
syntax enable
filetype plugin indent on

" General layout
set number        " line numbers
set list          " show special chars
set laststatus=2  " always show statusbar
set hidden        " hides unsaved file instead of closing
set directory-=.  " don't store swapfiles in the current directory
set autoindent
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

if has("gui_running")
  set go-=L " no scrollbars when opening a split window
  set guifont=Hack\ 12
  set guioptions-=T " hide toolbar
  set guioptions-=r " hide scrollbars
end

let g:airline_powerline_fonts=1
set listchars=tab:▸\ ,eol:¬

set statusline+=%{fugitive#statusline()[4:-2]}
set statusline+=%#warningmsg#
set statusline+=%*

set background=dark
colorscheme solarized

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

set wildmenu

" Vmatch
vmap <expr>  ++  VMATH_YankAndAnalyse()
nmap         ++  vip++

" Highlight words
highlight TechWordsToAvoid ctermbg=red ctermfg=white guibg=#cc2222 guifg=white
match TechWordsToAvoid /console.log/
autocmd BufWinEnter * match TechWordsToAvoid /console.log/
autocmd InsertEnter * match TechWordsToAvoid /console.log/
autocmd InsertLeave * match TechWordsToAvoid /console.log/
autocmd BufWinLeave * call clearmatches()

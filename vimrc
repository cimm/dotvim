" Vundle plugin manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'arcticicestudio/nord-vim'         " colorscheme
Plugin 'chrisbra/csv.vim'                 " csv helper, does column sums
Plugin 'ctrlpvim/ctrlp.vim'               " fuzzy file opener
Plugin 'gmarik/Vundle.vim'                " vundle itself
Plugin 'junegunn/goyo.vim'                " focus mode
Plugin 'maxbrunsfeld/vim-yankstack'       " emacs style kill ring
Plugin 'mileszs/ack.vim'                  " ack integration
Plugin 'nixon/vim-vmath.git'              " simple excel style calculations
Plugin 'plasticboy/vim-markdown'          " markdown syntax highlighting
Plugin 'tpope/vim-fugitive'               " git
Plugin 'vim-airline/vim-airline'          " fancy statusbar
Plugin 'w0rp/ale'                         " syntastic like linter but async
call vundle#end()

filetype plugin indent on
syntax enable

set autoindent
set clipboard=unnamed     " share clipboard between vim sessions and OS
set directory-=.          " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab
set hidden                " hides unsaved file instead of closing
set laststatus=2          " always show statusbar
set list                  " show special chars
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set listchars=tab:▸\ ,eol:¬
set nocompatible          " drop vi compatibility
set nolist                " hide listchars
set noswapfile            " 16 GiB RAM should be enough, no need to swap
set number                " line numbers
set path+=**              " include subdirs in path
set shortmess+=I          " don't show startup message
set shiftwidth=2
set softtabstop=2
set splitbelow splitright " open new split to right and bottom
set tabstop=2
set wildignore=*.bmp,*.gif,*.ico,*.jpg,*.png,.DS_Store,.git,*.swp " files I never want to open
set wildmenu              " make tab completion work as in the terminal

" Searching
set hlsearch
set ignorecase
set smartcase " case-sensitive if search contains an uppercase character

if has("gui_running")
  set go-=L " no scrollbars when opening a split window
  set guifont=Hack\ 12
  set guioptions-=T " hide toolbar
  set guioptions-=r " hide scrollbars
end

" Make CTRL+c identical to Esc (the double Esc prevents delays)
inoremap <C-c> <Esc><Esc>

" Hide swap files in netrw
let g:netrw_list_hide= '.*\.swp$'

" Remove whitespace on save for Ruby files
autocmd BufWritePre *.rb :%s/\s\+$//e

" Autocorrect, used for simple snippets
abbr clog console.log

" Underline spell erros in terminal
hi SpellBad cterm=underline ctermfg=DarkRed

" Plugin: nord-vim - blueish colorscheme
set termguicolors " imrpoved contrast for comments
let g:nord_italic=1
let g:nord_underline=1
let g:nord_italic_comments=1
set cursorline
let g:nord_cursor_line_number_background=1
colorscheme nord

" Plugin: vim-airline - fancy statusbar
let g:airline_powerline_fonts=1

" Plugin: vmath - simple excel style calculations
vmap <expr>  ++  VMATH_YankAndAnalyse()
nmap         ++  vip++

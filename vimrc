" Plug plugin manager
call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'         " colorscheme
Plug 'chrisbra/csv.vim'                 " csv helper, does column sums
Plug 'ctrlpvim/ctrlp.vim'               " fuzzy file opener
Plug 'gmarik/Vundle.vim'                " vundle itself
Plug 'junegunn/goyo.vim'                " focus mode
Plug 'maxbrunsfeld/vim-yankstack'       " emacs style kill ring
Plug 'mileszs/ack.vim'                  " ack integration
Plug 'plasticboy/vim-markdown'          " markdown syntax highlighting
Plug 'tpope/vim-fugitive'               " git
Plug 'vim-airline/vim-airline'          " fancy statusbar
Plug 'w0rp/ale'                         " syntastic like linter but async
Plug 'evanleck/vim-svelte'              " svelte syntax
call plug#end()

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
set nofoldenable          " disable code folding

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

" Plugin: svelte
autocmd BufRead,BufNewFile *.svelte setfiletype html

" Plugin: vim-airline - fancy statusbar
let g:airline_powerline_fonts=1

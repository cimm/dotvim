set nocompatible
syntax enable
filetype off

" Vundle plugin manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'                " vundle itself
Plugin 'altercation/vim-colors-solarized' " colorscheme
Plugin 'bling/vim-airline'                " fancy statusbar
Plugin 'w0rp/ale'                         " syntastic like linter but async
Plugin 'maxbrunsfeld/vim-yankstack'       " emacs style kill ring
Plugin 'ctrlpvim/ctrlp.vim'               " fuzzy file opener
Plugin 'tpope/vim-fugitive'               " git
Plugin 'plasticboy/vim-markdown'          " markdown syntax highlighting
Plugin 'xolox/vim-notes'                  " note taking
Plugin 'xolox/vim-misc.git'               " vim-notes dependency
Plugin 'chrisbra/csv.vim'                 " csv helper, does column sums
Plugin 'nixon/vim-vmath.git'              " simple excel style calculations
Plugin 'mileszs/ack.vim'                  " ack integration
call vundle#end()
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
  set guioptions-=r " hide scrollbars
  set guioptions-=T " hide toolbar
  set go-=L " no scrollbars when opening a split window
  set guifont=Hack\ 14
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
  set background=dark
  set listchars=tab:▸\ ,eol:¬
  colorscheme solarized
end

" Airline statusbar
if has("gui_running")
  let g:airline_powerline_fonts=1
end
set statusline+=%{fugitive#statusline()[4:-2]}
set statusline+=%#warningmsg#
set statusline+=%*

" Markdown syntax highlighting
let g:vim_markdown_folding_disabled=1

" Visual autocomplete for command menu
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

" Notes
:let g:notes_directories = ['~/Documents/Notes']
:let g:notes_suffix = '.md'

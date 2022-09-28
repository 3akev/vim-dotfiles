" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

syntax enable
set encoding=utf-8

set nowrap                      " don't wrap lines
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set fileformat=unix " save files with unix line endings
set scrolloff=10 " Do not let cursor scroll below or above N number of lines when scrolling.

" Show partial command you type in the last line of the screen.
set showcmd
" Show the mode you are on the last line.
set showmode
" Show matching words during a search.
set showmatch

" Set the commands to save in history default number is 20.
set history=1000

" Add numbers to each line on the left-hand side.
set number

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=100

" Split window below/right when creating horizontal/vertical windows
set splitbelow splitright

" Time in milliseconds to wait for a mapped sequence to complete,
" see https://unix.stackexchange.com/q/36882/221410 for more info
set timeoutlen=500

" Use system clipboard
set clipboard^=unnamed,unnamedplus

" Disable creating swapfiles, see https://stackoverflow.com/q/821902/6064933
set noswapfile

" Ignore certain files and folders when globing
set wildignore+=*.o,*.obj,*.dylib,*.bin,*.dll,*.exe
set wildignore+=*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**
set wildignore+=*.jpg,*.png,*.jpeg,*.bmp,*.gif,*.tiff,*.svg,*.ico
set wildignore+=*.pyc,*.pkl
set wildignore+=*.DS_Store
set wildignore+=*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz,*.xdv
set wildignorecase  " ignore file and dir name cases in cmd-completion

" Set up backup directory
let g:backupdir=expand('$HOME/.vim/backup//')
let &backupdir=g:backupdir

" Skip backup for patterns in option wildignore
let &backupskip=&wildignore
set backup  " create backup for files
set backupcopy=yes  " copy the original file to backupdir and overwrite it

" General tab settings
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " expand tab to spaces so that tabs are spaces

" Set matching pairs of characters and highlight matching brackets
set matchpairs+=<:>,「:」,『:』,【:】,“:”,‘:’,《:》

set number relativenumber  " Show line number and relative line number

" Ignore case in general, but become case-sensitive when uppercase is present
set ignorecase smartcase

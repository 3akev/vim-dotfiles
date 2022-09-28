" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands

"" Whitespace
set shiftwidth=4
set tabstop=4
set expandtab
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

set splitright

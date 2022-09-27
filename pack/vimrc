set nocompatible                " choose no compatibility with legacy vi

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

let mapleader=","

" yank to system clipboard
map <leader>y "*y

" paste lines from unnamed register and fix indentation
nmap <leader>p pV`]=
nmap <leader>P PV`]=

" expand %% to current directory in command-line mode
" http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

map <leader>gl :CommandT lib<cr>
map <leader>gt :CommandTTag<cr>
map <leader>f :CommandT<cr>
map <leader>F :CommandT %%<cr>

" In command-line mode, C-a jumps to beginning (to match C-e)
cnoremap <C-a> <Home>

" <Tab> indents if at the beginning of a line; otherwise does completion
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-n>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-p>

" toggle between last open buffers
nnoremap <leader><leader> <c-^>
nnoremap <leader>D :tabclose<cr>

set splitright
set splitbelow

"" Python stuff

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red
" Display tabs at the beginning of a line as bad.
match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
match BadWhitespace /\s\+$/


"" Plugin stuff
" ale
let g:ale_sign_column_always = 1

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1 " add errors to quickfix list

let g:ale_fix_on_save = 1

" vim-highlightedyank
let g:highlightedyank_highlight_duration = 300

" provide path directly to the library file
let g:clang_library_path='/usr/lib/libclang.so'

" apply color scheme
set background=dark
colorscheme gruvbox8

"" Custom keymaps
nnoremap <leader>F :ALEFix<cr>

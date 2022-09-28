let b:ale_linters = {'python': ['pylint']}
let g:ale_python_pylint_options = '--errors-only'

let b:ale_fixers = {'python': ['black', 'isort', 'trim_whitespace', 'autoimport']}

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red
" Display tabs at the beginning of a line as bad.
match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
match BadWhitespace /\s\+$/

if exists(':AsyncRun')
  nnoremap <buffer><silent> <F9> :<C-U>AsyncRun python -u "%"<CR>
endif

" Do not wrap Python source code.
set nowrap
set sidescroll=5
set sidescrolloff=2
set colorcolumn=100

" For delimitMate
let b:delimitMate_matchpairs = "(:),[:],{:}"

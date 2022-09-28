let b:ale_linters = {'python': ['pylint']}
let g:ale_python_pylint_options = '--errors-only'

let b:ale_fixers = {'python': ['black', 'isort', 'trim_whitespace', 'autoimport']}

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red
" Display tabs at the beginning of a line as bad.
match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
match BadWhitespace /\s\+$/


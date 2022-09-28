let b:ale_linters = {'python': ['pylint']}
let g:ale_python_pylint_options = '--errors-only'

let b:ale_fixers = {'python': ['black', 'isort', 'trim_whitespace', 'autoimport']}

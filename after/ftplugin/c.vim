set commentstring=//\ %s

set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " expand tab to spaces so that tabs are spaces

" Disable inserting comment leader after hitting o or O or <Enter>
set formatoptions-=o
set formatoptions-=r

nnoremap <silent> <buffer> <F9> :call <SID>compile_run_c()<CR>

function! s:compile_run_c() abort
  let opt = {}
  let executable = expand("$(VIM_FILEDIR)/$(VIM_FILENOEXT)")
  call asyncrun#run('term', opt, printf("gcc -Wall -O2 %s -o %s && %s", expand("$(VIM_FILEPATH)"), executable, executable))
endfunction

" For delimitMate
let b:delimitMate_matchpairs = "(:),[:],{:}"

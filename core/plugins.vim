" ale
let g:ale_sign_column_always = 1

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1 " add errors to quickfix list

"let g:ale_fix_on_save = 1

" vim-highlightedyank
let g:highlightedyank_highlight_duration = 300

" provide path directly to the library file
let g:clang_library_path='/usr/lib/libclang.so'

" vim-better-escape
let g:better_escape_interval = 200

""""""""""""""""""""""""""""vim-sandwich settings"""""""""""""""""""""""""""""
" Map s to nop since s in used by vim-sandwich. Use cl instead of s.
nmap s <Nop>
omap s <Nop>

 """""""""""""""""""""""""" asyncrun.vim settings """"""""""""""""""""""""""
" Automatically open quickfix window of 6 line tall after asyncrun starts
let g:asyncrun_open = 6

" vim-autoformat
let g:python3_host_prog='/usr/bin/python3'

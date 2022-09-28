"""""""""""""""""""""""""""""" vim-which-key """""""""""""""""""""""""""""
let g:which_key_map =  {}

" Second level dictionaries:
" 'name' is a special field. It will define the name of the group, e.g., leader-f is the "+file" group.
" Unnamed groups will show a default empty string.

" =======================================================
" Create menus based on existing mappings
" =======================================================
" You can pass a descriptive text to an existing mapping.

" let g:which_key_map.f = { 'name' : '+file' }

" nnoremap <silent> <leader>fs :update<CR>
" let g:which_key_map.f.s = 'save-file'

" nnoremap <silent> <leader>fd :e $MYVIMRC<CR>
" let g:which_key_map.f.d = 'open-vimrc'

" nnoremap <silent> <leader>oq  :copen<CR>
" nnoremap <silent> <leader>ol  :lopen<CR>
" let g:which_key_map.o = {
"       \ 'name' : '+open',
"       \ 'q' : 'open-quickfix'    ,
"       \ 'l' : 'open-locationlist',
"       \ }

let g:which_key_map.p = 'paste below current line'
let g:which_key_map.P = 'paste above current line'

noremap <silent> <leader> :<c-u>WhichKey ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual ','<CR>

call which_key#register(',', "g:which_key_map")

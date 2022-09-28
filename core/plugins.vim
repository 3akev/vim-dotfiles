""""""""""""""""""""""""""""""" ale """"""""""""""""""""""""""""""
let g:ale_sign_column_always = 1

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1 " add errors to quickfix list

""""""""""""""""""""""""""""""" vim-highlightedyank """"""""""""""""""""""""""""""
let g:highlightedyank_highlight_duration = 300

"""""""""""""""""""""""""""""" vim-clang-format """"""""""""""""""""""""""""""
let g:clang_library_path='/usr/lib/libclang.so'

""""""""""""""""""""""""""""""" vim-better-escape """"""""""""""""""""""""""""""
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

""""""""""""""""""""""""""""""vim-auto-save settings""""""""""""""""""""""""""""""
let g:auto_save = 1  " enable AutoSave on Vim startup

"""""""""""""""""""""""""""""LeaderF settings"""""""""""""""""""""
" Do not use cache file
let g:Lf_UseCache = 0
" Refresh each time we call leaderf
let g:Lf_UseMemoryCache = 0

" Ignore certain files and directories when searching files
let g:Lf_WildIgnore = {
  \ 'dir': ['.git', '__pycache__', '.DS_Store'],
  \ 'file': ['*.exe', '*.dll', '*.so', '*.o', '*.pyc', '*.jpg', '*.png',
  \ '*.gif', '*.svg', '*.ico', '*.db', '*.tgz', '*.tar.gz', '*.gz',
  \ '*.zip', '*.bin', '*.pptx', '*.xlsx', '*.docx', '*.pdf', '*.tmp',
  \ '*.wmv', '*.mkv', '*.mp4', '*.rmvb', '*.ttf', '*.ttc', '*.otf',
  \ '*.mp3', '*.aac']
  \}

" Do not show fancy icons for Linux server.
let g:Lf_ShowDevIcons = 0

" Only fuzzy-search files names
let g:Lf_DefaultMode = 'FullPath'

" Popup window settings
let w = float2nr(&columns * 0.8)
if w > 140
  let g:Lf_PopupWidth = 140
else
  let g:Lf_PopupWidth = w
endif

let g:Lf_PopupPosition = [0, float2nr((&columns - g:Lf_PopupWidth)/2)]

" Do not use version control tool to list files under a directory since
" submodules are not searched by default.
let g:Lf_UseVersionControlTool = 0

" Use rg as the default search tool
let g:Lf_DefaultExternalTool = "rg"

" show dot files
let g:Lf_ShowHidden = 1

" Disable default mapping
let g:Lf_ShortcutF = ''
let g:Lf_ShortcutB = ''

" set up working directory for git repository
let g:Lf_WorkingDirectoryMode = 'a'

" Search files in popup window
nnoremap <silent> <leader>ff :<C-U>Leaderf file --popup<CR>

" Grep project files in popup window
nnoremap <silent> <leader>fg :<C-U>Leaderf rg --no-messages --popup<CR>

" Search vim help files
nnoremap <silent> <leader>fh :<C-U>Leaderf help --popup<CR>

" Search tags in current buffer
nnoremap <silent> <leader>ft :<C-U>Leaderf bufTag --popup<CR>

" Switch buffers
nnoremap <silent> <leader>fb :<C-U>Leaderf buffer --popup<CR>

" Search recent files
nnoremap <silent> <leader>fr :<C-U>Leaderf mru --popup --absolute-path<CR>

let g:Lf_PopupColorscheme = 'gruvbox_material'

" Change keybinding in LeaderF prompt mode, use ctrl-n and ctrl-p to navigate
" items.
let g:Lf_CommandMap = {'<C-J>': ['<C-N>'], '<C-K>': ['<C-P>']}


"""""""""""""""""""""""""""""" vim-togglecursor """""""""""""""""""""""""""""
let g:togglecursor_default = 'block'

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

" =======================================================
" Create menus not based on existing mappings:
" =======================================================
" Provide commands(ex-command, <Plug>/<C-W>/<C-d> mapping, etc.)
" and descriptions for the existing mappings.
"
" Note:
" Some complicated ex-cmd may not work as expected since they'll be
" feed into `feedkeys()`, in which case you have to define a decicated
" Command or function wrapper to make it work with vim-which-key.
" Ref issue #126, #133 etc.
" let g:which_key_map.b = {
"       \ 'name' : '+buffer' ,
"       \ '1' : ['b1'        , 'buffer 1']        ,
"       \ '2' : ['b2'        , 'buffer 2']        ,
"       \ 'd' : ['bd'        , 'delete-buffer']   ,
"       \ 'f' : ['bfirst'    , 'first-buffer']    ,
"       \ 'h' : ['Startify'  , 'home-buffer']     ,
"       \ 'l' : ['blast'     , 'last-buffer']     ,
"       \ 'n' : ['bnext'     , 'next-buffer']     ,
"       \ 'p' : ['bprevious' , 'previous-buffer'] ,
"       \ '?' : ['Buffers'   , 'fzf-buffer']      ,
"       \ }

" let g:which_key_map.l = {
"       \ 'name' : '+lsp',
"       \ 'f' : ['spacevim#lang#util#Format()'          , 'formatting']       ,
"       \ 'r' : ['spacevim#lang#util#FindReferences()'  , 'references']       ,
"       \ 'R' : ['spacevim#lang#util#Rename()'          , 'rename']           ,
"       \ 's' : ['spacevim#lang#util#DocumentSymbol()'  , 'document-symbol']  ,
"       \ 'S' : ['spacevim#lang#util#WorkspaceSymbol()' , 'workspace-symbol'] ,
"       \ 'g' : {
"         \ 'name': '+goto',
"         \ 'd' : ['spacevim#lang#util#Definition()'     , 'definition']      ,
"         \ 't' : ['spacevim#lang#util#TypeDefinition()' , 'type-definition'] ,
"         \ 'i' : ['spacevim#lang#util#Implementation()' , 'implementation']  ,
"         \ },
"       \ }
nnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual ','<CR>

call which_key#register(',', "g:which_key_map")

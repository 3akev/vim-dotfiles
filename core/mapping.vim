let mapleader=','

" <Tab> indents if at the beginning of a line; otherwise does completion
" function! InsertTabWrapper()
"   let col = col('.') - 1
"   if !col || getline('.')[col - 1] !~ '\k'
"     return "\<tab>"
"   else
"     return "\<c-n>"
"   endif
" endfunction
" inoremap <tab> <c-r>=InsertTabWrapper()<cr>
" inoremap <s-tab> <c-p>

" Use TAB to complete when typing words, else inserts TABs as usual.  Uses
" dictionary, source files, and completor to find matching words to complete.

" Note: usual completion is on <C-n> but more trouble to press all the time.
" Never type the same word twice and maybe learn a new spellings!
" Use the Linux dictionary when spelling is in doubt.
function! Tab_Or_Complete() abort
  " If completor is already open the `tab` cycles through suggested completions.
  if pumvisible()
    return "\<C-N>"
  " If completor is not open and we are in the middle of typing a word then
  " `tab` opens completor menu.
  elseif col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^[[:keyword:][:ident:]]'
    return "\<C-R>=completor#do('complete')\<CR>"
  else
    " If we aren't typing a word and we press `tab` simply do the normal `tab`
    " action.
    return "\<Tab>"
  endif
endfunction

" Use `tab` key to select completions.  Default is arrow keys.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use tab to trigger auto completion.  Default suggests completions as you type.
let g:completor_auto_trigger = 0
inoremap <expr> <Tab> Tab_Or_Complete()
inoremap <expr> <cr> pumvisible() ? '<c-y>' : '<cr>'


" fix for mapping alt key
execute "set <A-j>=\ej"
execute "set <A-k>=\ek"

" local keymap = vim.keymap
" local api = vim.api

" Save key strokes (now we do not need to press shift to enter command mode).
nmap ; :
xmap ; :

" Turn the word under cursor to upper case
imap <c-u> <Esc>viwUea

" Turn the current word into title case
imap <c-t> <Esc>b~lea

" Paste non-linewise text above or below current line, see https://stackoverflow.com/a/1346777/6064933
nmap <leader>p m`o<ESC>p``
nmap <leader>P m`O<ESC>p``

" Shortcut for faster save and quit
nmap <leader>w :update<cr>

" Saves the file if modified and quit
nmap <leader>q :x<cr>

" Quit all opened buffers
nmap <leader>Q :qa!<cr>

" Navigation in the location and quickfix list
nmap [l :lprevious<cr>zv
nmap ]l :lnext<cr>zv

nmap [L :lfirst<cr>zv
nmap ]L :llast<cr>zv

nmap [q :cprevious<cr>zv
nmap ]q :cnext<cr>zv

nmap [Q :cfirst<cr>zv
nmap ]Q :clast<cr>zv

" Close location list or quickfix list if they are present, see https://superuser.com/q/355325/736190
nmap \x :windo lclose <bar> cclose <cr>

" Delete a buffer, without closing the window, see https://stackoverflow.com/q/4465095/6064933
nmap \d :bprevious <bar> bdelete #<cr>

" Insert a blank line below or above current line (do not move the cursor),
" see https://stackoverflow.com/a/16136133/6064933
nmap <space>o :call append(line('.'), repeat([''], 1))<cr>

nmap <space>O :call append(line('.') - 1, repeat([''], 1))<cr>

" Move the cursor based on physical lines, not the actual lines.
" nmap j v:count == 0 ? 'gj' : 'j'
" nmap k v:count == 0 ? 'gk' : 'k'
nmap ^ g^
nmap 0 g0

" Do not include white space characters when using $ in visual mode,
" see https://vi.stackexchange.com/q/12607/15292
xmap $ g_

" Go to start or end of line easier
nmap H ^
xmap H ^
nmap L g_
xmap L g_

" Continuous visual shifting (does not exit Visual mode), `gv` means
" to reselect previous visual area, see https://superuser.com/q/310417/736190
xmap < <gv
xmap > >gv

" Reselect the text that has just been pasted, see also https://stackoverflow.com/a/4317090/6064933.
nmap <leader>v printf('`[%s`]', getregtype()[0]) {

" Always use very magic mode for searching
nmap / /\v

" Search in selected region
" xnoremap / :<C-U>call feedkeys('/\%>'.(line("'<")-1).'l\%<'.(line("'>")+1)."l")<CR>

" Change current working directory locally and print cwd after that,
" see https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
nmap <leader>cd :lcd %:p:h<cr>:pwd<cr>

" Use Esc to quit builtin terminal
tnoremap <leader><Esc> <C-\\><C-n>

" Toggle spell checking
nmap <F11> :set spell!<cr>
imap <F11> <c-o>:set spell!<cr>

" Remove trailing whitespace characters
nmap <leader><space> :StripTrailingWhitespace<cr>

" check the syntax group of current cursor position
nmap <leader>st :call utils#SynGroup()<cr>

" Copy entire buffer.
nmap <leader>y :%yank<cr>

" Toggle cursor column
nmap <leader>cl :call utils#ToggleCursorCol()<cr>

" Move current line up and down
nmap <A-k> :call utils#SwitchLine(line("."), "up")<cr>
nmap <A-j> :call utils#SwitchLine(line("."), "down")<cr>

" Move current visual-line selection up and down
xmap <A-k> :call utils#MoveSelection("up")<cr>
xmap <A-j> :call utils#MoveSelection("down")<cr>

" Go to a certain buffer
nmap gb :bn<cr>
nmap gB :bp<cr>

" Switch windows
nmap <left> <c-w>h
nmap <Right> <C-W>l
nmap <Up> <C-W>k
nmap <Down> <C-W>j

" Break inserted text into smaller undo units when we insert some punctuation chars.
" local undo_ch = { ,", ".", "!", "? ; ":" }
" for _, ch in ipairs(undo_ch) do
"   imap ch, ch .. "<c-g>u")
" end

" insert semicolon in the end
imap <A-;> <Esc>miA;<Esc>`ii

" Go to the beginning and end of current line in insert mode quickly
imap <C-A> <HOME>
imap <C-E> <END>

" Go to beginning of command in command-line mode
cmap <C-A> <HOME>

" Delete the character to the right of the cursor
imap <C-D> <DEL>

nnoremap <space>f :Autoformat<CR>

" <c-l> to clear highlighting
nnoremap <C-l> :noh<cr>

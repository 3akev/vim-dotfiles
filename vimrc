set nocompatible                " choose no compatibility with legacy vi

for fpath in split(globpath('~/.vim/core/', '*.vim'), '\n')
  exe 'source' fpath
endfor

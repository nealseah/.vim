" Be iMproved
set nocompatible

if has('vim_starting')
  set runtimepath+=~/.vim/.bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/.bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

call neobundle#end()

" Required:
filetype plugin indent on

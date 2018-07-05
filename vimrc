"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/dein')
  call dein#begin('~/.vim/dein')

  call dein#add('Shougo/dein.vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

let mapleader="\<Space>"
ru! modules/editor.vim
ru! modules/movement.vim
ru! modules/files.vim
ru! modules/search.vim
ru! modules/appearence.vim
ru! modules/git.vim
ru! modules/coding/*.vim

" " If you want to install not installed plugins on startup.
" if dein#check_install()
"   call dein#install()
" endif
" call map(dein#check_clean(), "delete(v:val, 'rf')")

"End dein Scripts-------------------------

" autocmd! BufWritePost *.vim source %

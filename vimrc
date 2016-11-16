"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.vim/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

ru! modules/editor.vim
ru! modules/movement.vim
ru! modules/files.vim
ru! modules/search.vim
ru! modules/appearence.vim
ru! modules/git.vim

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
call map(dein#check_clean(), "delete(v:val, 'rf')")

"End dein Scripts-------------------------

autocmd! BufWritePost *.vim source %

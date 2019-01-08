if &compatible
  set nocompatible               " Be iMproved
endif

call plug#begin('~/.vim/.bundle')
ru! modules/editor.vim
ru! modules/movement.vim
ru! modules/files.vim
ru! modules/search.vim
ru! modules/appearence.vim
ru! modules/git.vim
ru! modules/coding/*.vim
call plug#end()

colorscheme PaperColor

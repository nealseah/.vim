" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath+=~/.vim/.bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/.bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
ru! bundle.vim

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

call unite#custom#source('file_rec,file_rec/async,file_mru,file,buffer,grep', 'ignore_pattern', escape(substitute(join(split(&wildignore, ","), '\|'), '**/\?', "", "g"), '.'))
call unite#custom#source('file_rec,file_rec/async,grep', 'max_candidates', 0)
call unite#custom#source('buffer',
      \ 'ignore_pattern', join([
      \ 'vimfiler',
      \ ], '\|'))

" only match filename
call unite#custom#source(
      \ 'buffer, file, file_rec/async', 'matchers',
      \ ['matcher_hide_hidden_files', 'matcher_fuzzy'])
call unite#custom#source(
      \ 'buffer, file, file_rec/async', 'converters',
      \ ['converter_tail', 'converter_relative_word', 'converter_file_directory'])
call unite#filters#sorter_default#use(['sorter_rank'])

colorscheme molokai

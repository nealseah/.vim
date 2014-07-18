NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
nn <C-p> :Unite -no-split -start-insert -short-source-names neomru/file buffer file_rec<cr>

" explorer
" disable netrw
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1
NeoBundle 'Shougo/vimfiler.vim'
no <F1> :VimFiler -buffer-name=explorer -split -simple -winwidth=30 -toggle -no-quit<CR>
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_enable_auto_cd = 1
autocmd VimEnter * if !argc() | VimFiler | endif
autocmd BufEnter * if (winnr('$') == 1 && &filetype ==# 'vimfiler') | q | endif

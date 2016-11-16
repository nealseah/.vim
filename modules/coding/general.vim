" comment {{{
call dein#add('tpope/vim-commentary')
nmap <leader>/ gcc
" }}}

" folding {{{
set foldlevelstart=1

call dein#add('Konfekt/FastFold')
let g:fastfold_togglehook = 1
let g:fastfold_mapsuffixes = ['x','X']

" focus the current fold.
nn <leader>z zMzvzz
" }}}

call dein#add('scrooloose/syntastic')
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_auto_jump = 2
let g:syntastic_loc_list_height = 5

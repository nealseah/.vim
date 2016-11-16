" Comment {{{
call dein#add('tpope/vim-commentary')
nmap <leader>/ gcc
" }}}

" Folding {{{
set foldlevelstart=1
" focus the current fold.
nn <leader>z zMzvzz
" }}}

" Format {{{
set fdm=syntax
call dein#add('editorconfig/editorconfig-vim')
call dein#add('junegunn/vim-easy-align')
" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)

" trim
call dein#add('ntpeters/vim-better-whitespace')
map <leader>l :StripWhitespace<cr>
let g:better_whitespace_filetypes_blacklist = ['help', 'git', 'gitcommit', 'unite', 'vimfiler']
" workaround for vimfiler
autocmd FileType vimfiler match ExtraWhiteSpace ''
" }}}

call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-unimpaired')
call dein#add('tommcdo/vim-exchange')
call dein#add('Raimondi/delimitMate')
call dein#add('jmcantrell/vim-diffchanges')

call dein#add('AndrewRadev/splitjoin.vim')
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

call dein#add('scrooloose/syntastic')
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_auto_jump = 2
let g:syntastic_loc_list_height = 5

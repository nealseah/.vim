" Syntax {{{
Plug ('sheerun/vim-polyglot')
Plug ('scrooloose/syntastic')
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_auto_jump = 2
let g:syntastic_loc_list_height = 5
" }}}

" Comment {{{
Plug ('tpope/vim-commentary')
nmap <leader>/ gcc
" }}}

" Folding {{{
set foldlevelstart=1
set nofoldenable
" }}}

" Format {{{
set fdm=syntax
" Plug ('editorconfig/editorconfig-vim')
Plug ('junegunn/vim-easy-align')
" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)

Plug ('AndrewRadev/splitjoin.vim')

" trim
Plug ('ntpeters/vim-better-whitespace')
map <leader>l :StripWhitespace<cr>
let g:better_whitespace_filetypes_blacklist = ['help', 'git', 'gitcommit', 'unite', 'vimfiler']
" }}}

Plug ('tpope/vim-repeat')
Plug ('tpope/vim-surround')
Plug ('tpope/vim-unimpaired')
Plug ('tommcdo/vim-exchange')
Plug ('Raimondi/delimitMate')

" Syntax {{{
Plug ('sheerun/vim-polyglot')
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
Plug ('editorconfig/editorconfig-vim')
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

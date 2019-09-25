" Comment {{{
Plug ('tpope/vim-commentary')
nmap <leader>/ gcc
" }}}

" Folding {{{
set foldlevelstart=1
set nofoldenable
" focus the current fold.
nn <leader>z zMzvzz
" }}}

" Format {{{
set fdm=syntax
" Plug ('editorconfig/editorconfig-vim')
Plug ('junegunn/vim-easy-align')
" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)

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
Plug ('jmcantrell/vim-diffchanges')

Plug ('AndrewRadev/splitjoin.vim')
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

Plug ('scrooloose/syntastic')
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_auto_jump = 2
let g:syntastic_loc_list_height = 5

Plug ('SirVer/ultisnips')

let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

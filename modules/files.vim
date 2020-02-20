" encoding {{{
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" }}}

" netrw {{{
let g:netrw_liststyle=1
let g:netrw_sizestyle="H"
Plug ('tpope/vim-vinegar')
" }}}

Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_ShortcutF = '<leader>o'
nnoremap <leader>f :Leaderf rg<Cr>

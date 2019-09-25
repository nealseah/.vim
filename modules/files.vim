" encoding {{{
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" }}}

" netrw {{{
let g:netrw_liststyle=1
let g:netrw_sizestyle="H"
Plug ('tpope/vim-vinegar')
" }}}

" fzf {{{
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
nnoremap <leader>o :<C-u>Files<cr>
nnoremap <leader>f :Rg<Cr>

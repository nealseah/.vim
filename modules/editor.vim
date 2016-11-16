let mapleader="\<Space>"
set timeoutlen=400
call dein#add('tpope/vim-sensible')

" wildignore
call dein#add('sstallion/vim-wildignore')

call dein#add('MarcWeber/vim-addon-local-vimrc')
let g:local_vimrc = {'names':['.vimrc'],'hash_fun':'LVRHashOfFile'}

nmap <leader>s :w<CR>
nmap <leader>q :q!<CR>
nmap <leader>x ZZ

set shiftwidth=2 tabstop=2 softtabstop=2 expandtab
set cursorline

" Yank
nn Y y$

" Undo files
set undodir=~/.vim/.tmp/undo
set undolevels=3000
set undoreload=10000
set undofile

" Backups
set nobackup

" Swap files
set noswapfile

" Window {{{
call dein#add('wincent/terminus')
call dein#add('drn/zoomwin-vim')
call dein#add('geechrist/directionalWindowResizer')
nn <silent> <down>  :call DownHorizontal()<CR>
nn <silent> <up>    :call UpHorizontal()<CR>
nn <silent> <right> :call RightVertical()<CR>
nn <silent> <left>  :call LeftVertical()<CR>
" switch from last window
nn <leader>w <c-w><c-p>
nn <leader>e <c-^>
" }}}

" Text-object {{{
call dein#add("kana/vim-textobj-user")
" e
call dein#add("kana/vim-textobj-entire")
" f{char}
call dein#add("thinca/vim-textobj-between")
" b
call dein#add("rhysd/vim-textobj-anyblock")
" l
call dein#add("kana/vim-textobj-line")
" }}}

" Selection {{{
" select the lines which were just pasted
" nnoremap vv `[V`]
" select text you just pasted
noremap gV `[v`]

call dein#add('terryma/vim-expand-region')
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
" }}}

" Format {{{
call dein#add('editorconfig/editorconfig-vim')
call dein#add('junegunn/vim-easy-align')
" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)
" }}}

" Trim {{{
call dein#add('ntpeters/vim-better-whitespace')
map <leader>l :StripWhitespace<cr>
let g:better_whitespace_filetypes_blacklist = ['help', 'git', 'gitcommit', 'unite', 'vimfiler']
" workaround for vimfiler
autocmd FileType vimfiler match ExtraWhiteSpace ''
" }}}

" Input Method
call dein#add('ybian/smartim')

call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-surround')
call dein#add('tommcdo/vim-exchange')
call dein#add('Raimondi/delimitMate')
call dein#add('jmcantrell/vim-diffchanges')

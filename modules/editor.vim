let mapleader="\<Space>"
set timeoutlen=400
Plug ('tpope/vim-sensible')

" wildignore
Plug ('sstallion/vim-wildignore')

Plug ('MarcWeber/vim-addon-local-vimrc')
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
Plug ('wincent/terminus')
Plug ('drn/zoomwin-vim')
Plug ('geechrist/directionalWindowResizer')
nn <silent> <down>  :call DownHorizontal()<CR>
nn <silent> <up>    :call UpHorizontal()<CR>
nn <silent> <right> :call RightVertical()<CR>
nn <silent> <left>  :call LeftVertical()<CR>
" switch from last window
nn <leader>w <c-w><c-p>
" switch from last buffer
nn <leader>e <c-^>
" tmux
Plug ('tmux-plugins/vim-tmux')
Plug ('tmux-plugins/vim-tmux-focus-events')
" }}}

" Text-object {{{
Plug ('kana/vim-textobj-user')
" e
Plug ('kana/vim-textobj-entire')
" f{char}
Plug ('thinca/vim-textobj-between')
" b
Plug ('rhysd/vim-textobj-anyblock')
" l
Plug ('kana/vim-textobj-line')
" }}}

" Input Method
Plug ('ybian/smartim')

" Selection {{{
" select text you just pasted
noremap gV `[v`]

Plug ('terryma/vim-expand-region')
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
" }}}

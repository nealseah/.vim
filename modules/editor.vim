let mapleader="\<Space>"
set timeoutlen=400
Plug ('tpope/vim-sensible')
set number

" wildignore
Plug ('sstallion/vim-wildignore')

Plug ('MarcWeber/vim-addon-local-vimrc')
let g:local_vimrc = {'names':['.vimrc'],'hash_fun':'LVRHashOfFile'}

nmap <leader>s :w<CR>
nmap <leader>q :q!<CR>
nmap <leader>x ZZ

set shiftwidth=2 tabstop=2 softtabstop=2 expandtab
set cursorline

" Yank {{{
nn Y y$
" require coc-yank
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>
nnoremap <silent> <space>cy  :<C-u>CocCommand yank.clean<cr>
" }}}

" Substitute {{{
" Plug ('svermeulen/vim-subversive')
" nmap <leader>s <plug>(SubversiveSubstituteRange)
" xmap <leader>s <plug>(SubversiveSubstituteRange)
" nmap <leader>ss <plug>(SubversiveSubstituteWordRange)
" }}}

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
" resize & move windows
Plug ('simeji/winresizer')
" switch from last window
nn <leader>ww <c-w><c-p>
nn <leader>wv <c-w><c-v>
nn <leader>wh <c-w><c-s>
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

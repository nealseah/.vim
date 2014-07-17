set hlsearch
set ignorecase
set smartcase

" Dash Searching"
NeoBundle "rizzatti/funcoo.vim.git"
NeoBundle "rizzatti/dash.vim.git"
" nm <Leader>qs <Plug>DashSearch
" nm <Leader>qa <Plug>DashGlobalSearch
nm K <Plug>DashSearch

NeoBundleLazy 'rking/ag.vim', {'autoload':{'commands':'Ag'}}
NeoBundleLazy 'mileszs/ack.vim', {'autoload':{'commands':'Ack'}}
nn <leader>a :Ag<space>

" sane regexes
nnoremap / /\v
vnoremap / /\v

" clear search matching
noremap <leader><space> :noh<cr>:call clearmatches()<cr>


NeoBundle 'tpope/vim-fugitive'
NeoBundleLazy 'gregsexton/gitv', {'depends':['tpope/vim-fugitive'], 'autoload':{'commands':'Gitv'}}
NeoBundle 'int3/vim-extradite'
NeoBundle 'airblade/vim-gitgutter'

"3 ways merge tool
NeoBundle 'sjl/splice.vim'

NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/gist-vim'
" NeoBundleLazy 'mattn/gist-vim', {'depends':['mattn/webapi-vim'], 'autoload': {'commands':'Gist'}}

nn <leader>gs :Gst<cr>
nn <leader>gb :Gblame<cr>

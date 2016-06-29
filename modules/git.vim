NeoBundle 'tpope/vim-fugitive'
NeoBundleLazy 'gregsexton/gitv', {'depends':['tpope/vim-fugitive'], 'autoload':{'commands':'Gitv'}}
NeoBundle 'int3/vim-extradite'
NeoBundle 'airblade/vim-gitgutter'
let g:gitgutter_sign_column_always = 1
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

nn <leader>gs :Gst<cr>
nn <leader>gb :Gblame<cr>
nn <leader>gd :Gvdiff<cr>
nn <leader>ga :Gwrite<cr>
nn <leader>gc :Gcommit<cr>
nn <leader>gl :Extradite<cr>

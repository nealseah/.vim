Plug ('tpope/vim-fugitive')
Plug ('airblade/vim-gitgutter')
set signcolumn=yes
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
Plug ('int3/vim-extradite')

nn <leader>gs :Gst<cr>
nn <leader>gb :Gblame<cr>
nn <leader>gd :Gvdiff<cr>
nn <leader>ga :Gwrite<cr>
nn <leader>gc :Gcommit<cr>
nn <leader>gl :Extradite<cr>

call dein#add('tpope/vim-fugitive')
call dein#add('airblade/vim-gitgutter')
let g:gitgutter_sign_column_always = 1
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
call dein#add('int3/vim-extradite')

nn <leader>gs :Gst<cr>
nn <leader>gb :Gblame<cr>
nn <leader>gd :Gvdiff<cr>
nn <leader>ga :Gwrite<cr>
nn <leader>gc :Gcommit<cr>
nn <leader>gl :Extradite<cr>

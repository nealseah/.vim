Plug ('tpope/vim-fugitive')
Plug ('airblade/vim-gitgutter')
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
set updatetime=100
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

nn <leader>gs :G<cr>
nn <leader>gb :Gblame<cr>
nn <leader>gd :Gvdiff<cr>
nn <leader>ga :Gwrite<cr>
nn <leader>gr :Gread<cr>
nn <leader>gc :Gcommit<cr>
nn <leader>gl :Glog<cr>

"browse file in the browser @github
Plug ('tpope/vim-rhubarb')
nn <leader>gh :Gbrowse<cr>

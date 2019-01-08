" Local search {{{
set hlsearch
set ignorecase
set smartcase

" sane regexes
" nn / /\v
" vn / /\v

" clear search matching
nm <leader><space> :noh<cr>:call clearmatches()<cr>

" Plug ('bronson/vim-visual-star-search')
Plug ('haya14busa/vim-asterisk')
map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)

Plug ('haya14busa/incsearch.vim')
let g:incsearch#auto_nohlsearch = 1
nmap /  <Plug>(incsearch-forward)
nmap ?  <Plug>(incsearch-backward)
nmap g/ <Plug>(incsearch-stay)
nmap n  <Plug>(incsearch-nohl-n)
nmap N  <Plug>(incsearch-nohl-N)
nmap *  <Plug>(incsearch-nohl-*)
nmap #  <Plug>(incsearch-nohl-#)
nmap g* <Plug>(incsearch-nohl-g*)
nmap g# <Plug>(incsearch-nohl-g#)
" }}}

" Global search {{{
" Plug ('gabesoft/vim-ags')
" nn <leader>f :<C-u>Ags<SPACE>
" nn K :<C-u>Ags<cr>
" }}}

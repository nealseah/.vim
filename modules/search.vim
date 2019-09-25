" Local search {{{
set hlsearch
set ignorecase
set smartcase

" clear search matching
nm <leader><space> :noh<cr>:call clearmatches()<cr>

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

Plug ('haya14busa/incsearch-fuzzy.vim')
nmap z/ <Plug>(incsearch-fuzzy-/)
nmap z? <Plug>(incsearch-fuzzy-?)
nmap zg/ <Plug>(incsearch-fuzzy-stay)
" }}}

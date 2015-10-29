set hlsearch
set ignorecase
set smartcase
" clear search matching
nm <leader><space> :noh<cr>:call clearmatches()<cr>

" sane regexes
" nn / /\v
" vn / /\v

" grep
NeoBundle 'gabesoft/vim-ags'
if executable('ag')
  let g:unite_source_rec_async_command= 'ag --nocolor --nogroup --ignore ".hg" --ignore ".svn" --ignore ".git" --hidden -g ""'
  let g:unite_source_grep_command = 'ag'
endif
let g:unite_source_grep_default_opts = '--nogroup --nocolor --ignore ".hg" --ignore ".svn" --ignore ".git" --column'
let g:unite_source_grep_recursive_opt = ''

nn <leader>f :<C-u>Ags<SPACE>
nn K :<C-u>Ags<cr>

" Dash Searching"
" NeoBundle "rizzatti/funcoo.vim.git"
" NeoBundle "rizzatti/dash.vim.git"
" nm <F7> <Plug>DashSearch

NeoBundle 'haya14busa/incsearch.vim'
nmap /  <Plug>(incsearch-forward)
nmap ?  <Plug>(incsearch-backward)
nmap g/ <Plug>(incsearch-stay)
let g:incsearch#auto_nohlsearch = 1
nmap n  <Plug>(incsearch-nohl-n)
nmap N  <Plug>(incsearch-nohl-N)
nmap *  <Plug>(incsearch-nohl-*)
nmap #  <Plug>(incsearch-nohl-#)
nmap g* <Plug>(incsearch-nohl-g*)
nmap g# <Plug>(incsearch-nohl-g#)

" NeoBundle 'bronson/vim-visual-star-search'
NeoBundle 'haya14busa/vim-asterisk'
map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)

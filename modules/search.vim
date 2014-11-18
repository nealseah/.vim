set hlsearch
set ignorecase
set smartcase
" clear search matching
nm <leader><space> :noh<cr>:call clearmatches()<cr>

" sane regexes
" nn / /\v
" vn / /\v

if executable('ag')
  let g:unite_source_rec_async_command= 'ag --nocolor --nogroup --ignore ".hg" --ignore ".svn" --ignore ".git" --hidden -g ""'
  let g:unite_source_grep_command = 'ag'
endif
let g:unite_source_grep_default_opts = '--nogroup --nocolor --ignore ".hg" --ignore ".svn" --ignore ".git" --column'
let g:unite_source_grep_recursive_opt = ''

nn <leader>/ :<C-u>Unite -no-empty -auto-highlight grep:.<cr>
nn K :<C-u>Unite -no-empty -auto-highlight grep:.<cr><c-r><c-w><cr>

" Dash Searching"
NeoBundle "rizzatti/funcoo.vim.git"
NeoBundle "rizzatti/dash.vim.git"
nm <F7> <Plug>DashSearch

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

NeoBundle 'bronson/vim-visual-star-search'

" ino jk <esc>
" ino kj <esc>
" ino <esc> <nop>

nmap <leader>s :w<CR>
nmap <leader>q :q!<CR>
nmap <leader>qa :qa!<CR>
nmap <leader>x ZZ

" undo files
set undodir=~/.vim/.tmp/undo
set undolevels=3000
set undoreload=10000
set undofile

" backups
set backupdir=~/.vim/.tmp/backup
set nobackup

"p swap files
set directory=~/.vim/.tmp/swap
set noswapfile

set number

set cursorline

" text-object {{{
NeoBundle "kana/vim-textobj-user"
" f{char}
NeoBundle "thinca/vim-textobj-between"
" u
"NeoBundle "beloglazov/vim-textobj-punctuation"
" b
NeoBundle "rhysd/vim-textobj-anyblock"

" e
NeoBundle "kana/vim-textobj-entire"
" q
NeoBundle "beloglazov/vim-textobj-quotes"
" c
" NeoBundle "coderifous/textobj-word-column.vim"
" s
NeoBundle "reedes/vim-textobj-sentence"
" _
NeoBundle "lucapette/vim-textobj-underscore"
" da
NeoBundle "kana/vim-textobj-datetime"

NeoBundle "bootleq/vim-textobj-rubysymbol"
NeoBundle "nelstrom/vim-textobj-rubyblock"
NeoBundle "thinca/vim-textobj-function-javascript"
" }}}

NeoBundle 'drmikehenry/vim-fixkey'

" Disabling auto indent temporarily to paste
" NeoBundle 'ConradIrwin/vim-bracketed-paste'

" Format{{{
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)
"}}}

" Start interactive EasyAlign with a Vim movement
nmap <Leader>a <Plug>(EasyAlign)
set shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" Yank
NeoBundle 'vim-scripts/YankRing.vim'
let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'
let g:yankring_history_dir = '~/.vim/.tmp/'
nm <leader>y :YRShow<cr>
" NeoBundle 'maxbrunsfeld/vim-yankstack'
" make Y consistent with C and D. See :help Y.
" nn Y y$

NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-speeddating'
NeoBundle 'tommcdo/vim-exchange'
NeoBundle 'Raimondi/delimitMate'

" Input Method
NeoBundle 'ybian/smartim'

NeoBundle 'jmcantrell/vim-diffchanges'
"NeoBundle 'vim-scripts/diffchar.vim'
NeoBundle 'kshenoy/vim-signature'

" Trim
NeoBundle 'ntpeters/vim-better-whitespace'
" " clean up trailing whitespace
map <leader>c :StripWhitespace<cr>
let g:better_whitespace_filetypes_blacklist = ['help', 'gitcommit', 'unite', 'vimfiler']

" Bubbling lines
NeoBundle 'tpope/vim-unimpaired'
nmap <C-Up> [e
nmap <C-Down> ]e
vmap <C-Up> [egv
vmap <C-Down> ]egv

" select the lines which were just pasted
nnoremap vv `[V`]

" Window {{{
  " buffer move mappings (arrow key)
  nnoremap <Up> <c-w>+
  nnoremap <Down> <c-w>-
  nnoremap <Left> <c-w><
  nnoremap <Right> <c-w>>

  " buffer resizing mappings (shift + arrow key)
  nnoremap <S-Up> <c-w>K
  nnoremap <S-Down> <c-w>J
  nnoremap <S-Left> <c-w>H
  nnoremap <S-Right> <c-w>L
" }}}

" NeoBundle "chrisbra/SudoEdit.vim"
" NeoBundle "nathanaelkane/vim-indent-guides"
" hi IndentGuidesOdd  ctermbg=black
" hi IndentGuidesEven ctermbg=darkgrey

" NeoBundle 'Yggdroot/indentLine'
" let g:indentLine_char = '┆'
" let g:indentLine_color_term = 239
" let g:indentLine_color_gui = '#A4E57E'

NeoBundle 'AndrewRadev/splitjoin.vim'
NeoBundle 'tomtom/tcomment_vim'
let g:tcommentTextObjectInlineComment=''
NeoBundle 'tpope/vim-endwise'
NeoBundle 'Spaceghost/vim-matchit'
NeoBundle 'scrooloose/syntastic'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_auto_jump = 2
let g:syntastic_loc_list_height = 5

" text-object {{{

" f conflict with vim-textobj-between
"NeoBundle "kana/vim-textobj-function"
" a
NeoBundle "vim-scripts/argtextobj.vim"
" c
NeoBundle 'thinca/vim-textobj-comment'
" }}}

" folding {{{

set foldlevelstart=1
set foldmethod=syntax

" Space to toggle folds.
nn <space> za
vn <space> za
nn z<space> zR
vn z<space> zR

" }}}

" Make zO recursively open whatever top level fold we're in, no matter where the
" cursor happens to be.
nn zO zCzO
" Use ,z to "focus" the current fold.
nn <leader>z zMzvzz

" NeoBundle 'matze/vim-move'
" let g:move_key_modifier = 'M'
" switch among camelCase, snake_case, MixedCase and UPPER_CASE
NeoBundle 'tpope/vim-abolish'

NeoBundle 'majutsushi/tagbar'
NeoBundle 'tsukkee/unite-tag'

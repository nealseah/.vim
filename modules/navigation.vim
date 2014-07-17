NeoBundle 'scrooloose/nerdtree'
no <F1> :NERDTreeToggle<CR>
" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30
" disable netrw
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

"open a NERDTree automatically when vim starts up if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif

NeoBundle 'jistr/vim-nerdtree-tabs'

" NeoBundle 'Shougo/unite.vim'
" NeoBundle 'Shougo/neomru.vim'
" call unite#filters#matcher_default#use(['matcher_fuzzy'])
" call unite#filters#sorter_default#use(['sorter_rank'])
" nn <C-p> :Unite -no-split -start-insert -short-source-names neomru/file buffer file_rec<cr>

NeoBundle 'kien/ctrlp.vim', { 'depends': 'tacahiroy/ctrlp-funky' }

" map <tab> :bn<cr>
" map <S-tab> :bp<cr>

" Html
NeoBundle 'othree/html5.vim'

au BufNewFile,BufRead *.jade setl ft=jade fdm=indent
NeoBundle 'digitaltoad/vim-jade'

" CSS
au BufNewFile,BufRead *.css,*.scss setl fdm=marker fmr={,}
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'ap/vim-css-color'
NeoBundle 'cakebaker/scss-syntax.vim'

" Html
NeoBundle 'othree/html5.vim'
au BufNewFile,BufRead *.jade setl ft=jade
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'zeekay/vim-html2jade'
NeoBundle 'mattn/emmet-vim'

" CSS
NeoBundle 'JulesWang/css.vim'
au BufNewFile,BufRead *.css,*.scss setl ft=scss.css
au BufNewFile,BufRead *.css setl ft=css fdm=syntax
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'ap/vim-css-color'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'rstacruz/vim-ultisnips-css'
NeoBundle 'bonsaiben/bootstrap-snippets'
NeoBundle 'chrisgillis/vim-bootstrap3-snippets'
NeoBundle 'groenewege/vim-less'

" react
NeoBundle 'mxw/vim-jsx'

" ionic
" let g:syntastic_html_tidy_ignore_errors = ['proprietary attribute \"ion-nav-bar']

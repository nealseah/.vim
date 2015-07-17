" Html
NeoBundle 'othree/html5.vim'

au BufNewFile,BufRead *.jade setl ft=jade
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'zeekay/vim-html2jade'
NeoBundle 'mattn/emmet-vim'

" CSS
au BufNewFile,BufRead *.css,*.scss setl ft=scss.css
au BufNewFile,BufRead *.css setl ft=css fdm=syntax
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'ap/vim-css-color'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'rstacruz/vim-ultisnips-css'
NeoBundle 'bonsaiben/bootstrap-snippets'
NeoBundle 'chrisgillis/vim-bootstrap3-snippets'

" Template
NeoBundle 'geechrist/vim-mustache-handlebars'

au BufNewFile,BufRead .jshintrc setl ft=json
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'othree/yajs.vim'
NeoBundle 'maksimr/vim-jsbeautify'
NeoBundle 'othree/javascript-libraries-syntax.vim'

au BufNewFile,BufRead *.coffee setl ft=coffee fdm=indent
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'JarrodCTaylor/vim-js2coffee'
NeoBundle 'lukaszkorecki/CoffeeTags'

" NeoBundle 'marijnh/tern_for_vim'
" NeoBundle 'ramitos/jsctags'

"test
NeoBundle 'claco/jasmine.vim'
" NeoBundle 'BrunoGrasselli/jasmine-snippets'
" NeoBundle 'vim-scripts/Jasmine-snippets-for-snipMate'

"angular
NeoBundle 'burnettk/vim-angular'
"ionic
" let g:syntastic_html_tidy_ignore_errors = ['proprietary attribute \"ion-nav-bar']
NeoBundle 'moll/vim-node'

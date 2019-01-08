" Html {{{
Plug ('othree/html5.vim')
Plug ('mattn/emmet-vim')
Plug ('digitaltoad/vim-pug')
Plug ('mxw/vim-jsx')
" }}}

" CSS {{{
Plug ('hail2u/vim-css3-syntax')
Plug ('ap/vim-css-color')
Plug ('cakebaker/scss-syntax.vim')
Plug ('wavded/vim-stylus')
" }}}

" JS {{{
au BufNewFile,BufRead .eslintrc setl ft=json
Plug ('othree/yajs.vim')
Plug ('pangloss/vim-javascript')
au BufNewFile,BufRead .vue setl ft=javascript
" }}}

" Ops {{{
Plug ('rhowardiv/nginx-vim-syntax')
Plug ('honza/dockerfile.vim')
Plug ('pearofducks/ansible-vim')
Plug ('IN3D/vim-raml')
au BufNewFile,BufRead *.gradle setf groovy
" }}}

" Html {{{
call dein#add('othree/html5.vim')
call dein#add('mattn/emmet-vim')
call dein#add('digitaltoad/vim-pug')
call dein#add('mxw/vim-jsx')
" }}}

" CSS {{{
call dein#add('hail2u/vim-css3-syntax')
call dein#add('ap/vim-css-color')
call dein#add('cakebaker/scss-syntax.vim')
call dein#add('wavded/vim-stylus')
" }}}

" JS {{{
au BufNewFile,BufRead .eslintrc setl ft=json
call dein#add('othree/yajs.vim')
call dein#add('pangloss/vim-javascript')
au BufNewFile,BufRead .vue setl ft=javascript
" }}}

" Ops {{{
call dein#add('evanmiller/nginx-vim-syntax')
call dein#add('honza/dockerfile.vim')
call dein#add('pearofducks/ansible-vim')
call dein#add('IN3D/vim-raml')
au BufNewFile,BufRead *.gradle setf groovy
" }}}

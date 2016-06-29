"nginx
NeoBundle 'evanmiller/nginx-vim-syntax'
"gradle
au BufNewFile,BufRead *.gradle setf groovy
"docker
NeoBundle 'honza/dockerfile.vim'
"ansible
NeoBundle 'pearofducks/ansible-vim'

au BufNewFile,BufRead *.raml setl ft=yaml

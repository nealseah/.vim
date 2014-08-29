" vim:fdm=marker

ru! bundle.vim

" Defaults
let mapleader=","
set timeoutlen=400
" set hidden
NeoBundle 'tpope/vim-sensible'

ru! modules/movement.vim
ru! modules/navigation.vim
ru! modules/editor.vim
ru! modules/search.vim
ru! modules/appearence.vim
ru! modules/git.vim
ru! modules/tmux.vim
ru! modules/lang/*.vim

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

au FileType vim setlocal foldmethod=marker
au FileType help setlocal textwidth=78
nn <leader>ev :sp ~/.vim/custom.vim<cr>
if filereadable(expand("~/.vim/custom.vim"))
  source ~/.vim/custom.vim
endif
autocmd! BufWritePost *.vim source %

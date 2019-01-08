" encoding {{{
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" }}}

" netrw {{{
let g:netrw_liststyle=1
let g:netrw_sizestyle="H"
nnoremap <leader>d :<C-u>Rex<cr>
Plug ('tpope/vim-vinegar')
" }}}

" fzf {{{
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
nnoremap <leader>o :<C-u>Files<cr>
nnoremap <leader>go :<C-u>Files<cr>
nnoremap <leader>f :Rg<Cr>
" nnoremap <leader>f :<C-u>Denite grep<cr>
" }}}

" " Ripgrep command on grep source
" call denite#custom#var('grep', 'command', ['rg'])
" call denite#custom#var('grep', 'recursive_opts', [])
" call denite#custom#var('grep', 'final_opts', [])
" call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
" call denite#custom#var('grep', 'separator', ['--'])
" call denite#custom#var('grep', 'default_opts',
" 		\ ['--vimgrep', '--no-heading'])

" call denite#custom#source('file_mru', 'converters',
"       \ ['converter_relative_word'])

" " Define alias
" call denite#custom#alias('source', 'file_rec/git', 'file_rec')
" call denite#custom#var('file_rec/git', 'command',
"       \ ['git', 'ls-files', '-co', '--exclude-standard'])

" " Change default prompt
" call denite#custom#option('default', 'prompt', '>')

" " Change ignore_globs
" call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
"       \ [ '.git/', '.ropeproject/', '__pycache__/',
"       \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])

" nnoremap <leader>o :<C-u>Denite buffer file_rec<cr>
" nnoremap <leader>f :<C-u>Denite grep<cr>
" " }}}

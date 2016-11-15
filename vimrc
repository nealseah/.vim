"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.vim/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

let mapleader="\<Space>"
set timeoutlen=400
call dein#add('tpope/vim-sensible')

" wildignore
call dein#add('sstallion/vim-wildignore')

" denite
call dein#add('Shougo/denite.nvim')
" Change file_rec command.
call denite#custom#var('file_rec', 'command',
\ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

" Change mappings.
call denite#custom#map('insert', '<C-j>', 'move_to_next_line')
call denite#custom#map('insert', '<C-k>', 'move_to_prev_line')

" Change matchers.
call denite#custom#source(
\ 'file_mru', 'matchers', ['matcher_fuzzy', 'matcher_project_files'])
call denite#custom#source(
\ 'file_rec', 'matchers', ['matcher_cpsm'])

" Add custom menus
let s:menus = {}

let s:menus.zsh = {
	\ 'description': 'Edit your import zsh configuration'
	\ }
let s:menus.zsh.file_candidates = [
	\ ['zshrc', '~/.config/zsh/.zshrc'],
	\ ['zshenv', '~/.zshenv'],
	\ ]

let s:menus.my_commands = {
	\ 'description': 'Example commands'
	\ }
let s:menus.my_commands.command_candidates = [
	\ ['Split the window', 'vnew'],
	\ ['Open zsh menu', 'Denite menu:zsh'],
	\ ]

call denite#custom#var('menu', 'menus', s:menus)

" Ripgrep command on grep source
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'default_opts',
		\ ['--vimgrep', '--no-heading'])

call denite#custom#source('file_mru', 'converters',
      \ ['converter_relative_word'])

" Define alias
call denite#custom#alias('source', 'file_rec/git', 'file_rec')
call denite#custom#var('file_rec/git', 'command',
      \ ['git', 'ls-files', '-co', '--exclude-standard'])

" Change default prompt
call denite#custom#option('default', 'prompt', '>')

nnoremap <leader>o :<C-u>Denite file_rec buffer<cr>
nnoremap <leader>f :<C-u>Denite grep<cr>


" Add or remove your plugins here:
" call dein#add('Shougo/neosnippet.vim')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

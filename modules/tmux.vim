NeoBundle 'zaiste/tmux.vim'
NeoBundle 'benmills/vimux'

map <Leader>rp :VimuxPromptCommand<CR>
map <Leader>rl :VimuxRunLastCommand<CR>
map <LocalLeader>d :call VimuxRunCommand(@v, 0)<CR>

autocmd BufNewFile,BufRead {.,}tmux*.conf set ft=tmux
NeoBundle 'keith/tmux.vim'
NeoBundle 'benmills/vimux'
NeoBundle 'tmux-plugins/vim-tmux-focus-events'
NeoBundle 'tmux-plugins/vim-tmux'
" map <Leader>rp :VimuxPromptCommand<CR>
" map <Leader>rl :VimuxRunLastCommand<CR>
" map <LocalLeader>d :call VimuxRunCommand(@v, 0)<CR>

" Run the current file with rspec
" map <Leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>
" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>
" Interrupt any command running in the runner pane
map <Leader>vx :VimuxInterruptRunner<CR>
" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>

" NeoBundle 'suan/vim-instant-markdown'
" let g:instant_markdown_autostart = 0
NeoBundle 'shime/vim-livedown'
map gm :call LivedownPreview()<CR>
" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 0

" should the browser window pop-up upon previewing
let g:livedown_open = 1

NeoBundle 'tpope/vim-markdown'
let g:markdown_folding=1

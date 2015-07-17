" easy <esc>
nn j gj
nn k gk

" begining & end of line in normal mode
nn H ^
nn L g_

NeoBundle 'geechrist/directionalWindowResizer'
nn <silent> <down>  :call DownHorizontal()<CR>
nn <silent> <up>    :call UpHorizontal()<CR>
nn <silent> <right> :call RightVertical()<CR>
nn <silent> <left>  :call LeftVertical()<CR>
" move Cross Windows {{{
nn <silent> <c-l> <c-w>l
nn <silent> <c-h> <c-w>h
nn <silent> <c-k> <c-w>k
nn <silent> <c-j> <c-w>j
"}}}

" reselect visual block after indent {{{
vno < <gv
vno > >gv
"}}}

" emacs mode in ex mode {{{
cno <c-b> <left>
cno <c-f> <right>
cno <c-e> <end>
cno <c-a> <home>
cno <c-d> <del>
"}}}

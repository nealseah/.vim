"UniteRequired
NeoBundle 'ujihisa/unite-colorscheme'
" NeoBundle 'Lokaltog/vim-distinguished'
NeoBundle 'tomasr/molokai'

" let g:molokai_original = 1
let g:rehash256 = 1

NeoBundle "itchyny/lightline.vim"
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename', 'readonly', 'modified' ]],
      \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'filename': 'FilenameStatusLine',
      \   'fugitive': 'MyFugitive'
      \ },
      \ 'mode_map': {
      \   'n' : 'N',
      \   'i' : 'I',
      \   'R' : 'R',
      \   'v' : 'V',
      \   'V' : 'V-LINE',
      \   'c' : 'C',
      \   "\<C-v>": 'V-BLOCK',
      \   's' : 'S',
      \   'S' : 'S-LINE',
      \   "\<C-s>": 'S-BLOCK',
      \   '?': '      ' }
      \}

function! MyFugitive()
  try
    if expand('%:t') !~? 'Tagbar' && &ft !~? 'vimfiler' && exists('*fugitive#head')
      let mark = 'BR:'  " edit here for cool mark
      let _ = fugitive#head()
      return strlen(_) ? mark._ : ''
    endif
  catch
  endtry
  return ''
endfunction

function! ReadonlyStatusLine()
    return &readonly ? '⭤' : ''
endfunction

function! FilenameStatusLine()
  return ('' != ReadonlyStatusLine() ? ReadonlyStatusLine() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \  &ft == 'agsv' ? ags#get_status_string() :
        \  &ft == 'agse' ? '' :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]')
endfunction

" hide tilde(~) in vim
autocmd BufNewFile,BufRead * highlight NonText ctermfg=bg

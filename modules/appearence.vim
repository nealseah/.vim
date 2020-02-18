" hide tilde(~) in vim
" autocmd BufNewFile,BufRead * highlight NonText ctermfg=bg guifg=bg

Plug ('NLKNguyen/papercolor-theme')
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }
Plug ('itchyny/lightline.vim')
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename', 'readonly', 'modified' ]],
      \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'filename': 'FilenameStatusLine',
      \   'fugitive': 'GitSection'
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

function! GitSection()
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

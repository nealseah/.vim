"UniteRequired
NeoBundle 'ujihisa/unite-colorscheme'
" NeoBundle 'Lokaltog/vim-distinguished'
NeoBundle 'tomasr/molokai'

" let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

NeoBundle "itchyny/lightline.vim"
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename', 'readonly', 'modified' ]],
      \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
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

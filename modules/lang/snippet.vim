" NeoBundle 'SirVer/ultisnips'
" NeoBundle 'honza/vim-snippets'
" NeoBundle 'Shougo/neosnippet'
" NeoBundle 'Shougo/neosnippet-snippets'
" let g:neosnippet#enable_snipmate_compatibility = 1
" let g:neosnippet#snippets_directory="~/.vim/.bundle/vim-snippets/snippets,~/.vim/.bundle/Jasmine-snippets-for-snipMate,~/.vim/.bundle/jasmine.vim/snippets,~/.vim/snippets"
" " Plugin key-mappings.
" imap <C-k> <Plug>(neosnippet_expand_or_jump)
" smap <C-k> <Plug>(neosnippet_expand_or_jump)
" xmap <C-k> <Plug>(neosnippet_expand_target)

" " SuperTab like snippets behavior.
" " imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" " \ "\<Plug>(neosnippet_expand_or_jump)"
" " \: pumvisible() ? "\<C-n>" : "\<TAB>"
" imap <expr><TAB>
"  \ pumvisible() ? "\<C-n>" :
"  \ neosnippet#expandable_or_jumpable() ?
"  \    "\<TAB>" : "\<Plug>(neosnippet_expand_or_jump)"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: "\<TAB>"

" " For snippet_complete marker.
" if has('conceal')
"   set conceallevel=2 concealcursor=i
" endif

" Track the engine.
NeoBundle 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
NeoBundle 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

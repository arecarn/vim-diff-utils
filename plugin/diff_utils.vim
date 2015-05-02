""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Original Author: Ryan Carney
" License: WTFPL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
let s:save_cpo = &cpo
set cpo&vim

if exists("g:loaded_diff_utils")
    finish
else
    let g:loaded_diff_utils = 1
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

" GLOBALS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:diff_utils_load_default_maps = get(g:, 'diff_utils_load_default_maps', 1)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

" MAPPINGS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if g:diff_utils_load_default_maps
    nnoremap <silent> <Plug>(diff-utils-get)
                \ :<C-U>call diff_utils#do(v:count, 'diffget')<CR>
    if !hasmapto('<Plug>(diff-utils-get)')
        nmap <unique> do <Plug>(diff-utils-get)
    endif

    nnoremap <silent> <Plug>(diff-utils-put)
                \ :<C-U>call diff_utils#do(v:count, 'diffput')<CR>
    if !hasmapto('<Plug>(diff-utils-put)')
        nmap <unique> dp <Plug>(diff-utils-put)
    endif
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
let &cpo = s:save_cpo
unlet s:save_cpo
" vim:foldmethod=marker
" vim: textwidth=78
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Original Author: Ryan Carney
" License: WTFPL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
let s:save_cpo = &cpo
set cpo&vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

" PUBLIC FUNCTIONS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! diff_utils#do(count, diffcmd, range)

    let buffer = a:count

    if buffer == 0
        let buffer = ''
    endif

    execute a:range . a:diffcmd . ' ' . buffer
    diffupdate

    if a:range == '.'
        if a:diffcmd == 'diffput'
            call repeat#set("\<Plug>(diff-utils-put-line)", a:count)
        else
            call repeat#set("\<Plug>(diff-utils-obtain-line)", a:count)
        endif
    else
        if a:diffcmd == 'diffput'
            call repeat#set("\<Plug>(diff-utils-put)", a:count)
        else
            call repeat#set("\<Plug>(diff-utils-obtain)", a:count)
        endif
    endif
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
let &cpo = s:save_cpo
unlet s:save_cpo
" vim:foldmethod=marker
" vim: textwidth=78
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

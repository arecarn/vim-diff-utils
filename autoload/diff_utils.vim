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
function! diff_utils#do(count, diffcmd, range, direction)

    let buffer = a:count

    if buffer == 0
        let buffer = ''
    endif

    execute a:range . a:diffcmd . ' ' . buffer

    if a:direction == ''
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
    else
        if a:direction == 'forward'
            normal! ]c
            if a:diffcmd == 'diffput'
                call repeat#set("\<Plug>(diff-utils-put-forward)", a:count)
            else
                call repeat#set("\<Plug>(diff-utils-obtain-forward)", a:count)
            endif
        elseif a:direction == 'backward'
            normal! [c
            if a:diffcmd == 'diffput'
                call repeat#set("\<Plug>(diff-utils-put-backward)", a:count)
            else
                call repeat#set("\<Plug>(diff-utils-obtain-backward)", a:count)
            endif
        endif
    endif

    diffupdate
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
let &cpo = s:save_cpo
unlet s:save_cpo
" vim:foldmethod=marker
" vim: textwidth=78
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

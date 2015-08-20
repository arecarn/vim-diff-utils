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
let g:diff_utils_default_mapping = get(g:, 'diff_utils_default_mapping', 1)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

" MAPPINGS {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:do_map(name, lhs, rhs, mode, default_option) abort "{{{2
    let plug = '<Plug>('.a:name.')'
    execute a:mode.'noremap <silent> '.plug.' '.a:rhs
    if a:default_option
        execute a:mode.'map <unique> '.a:lhs.' '.plug
    endif
endfunction "}}}2

call s:do_map(
            \ "diff-utils-obtain",
            \ "do",
            \ ":\<C-U>call diff_utils#do(v:count, 'diffget', '', '')\<CR>",
            \ "n",
            \ g:diff_utils_default_mapping,
            \ )

call s:do_map(
            \ "diff-utils-obtain-forward",
            \ "]do",
            \ ":\<C-U>call diff_utils#do(v:count, 'diffget', '', 'forward')\<CR>",
            \ "n",
            \ g:diff_utils_default_mapping,
            \ )

call s:do_map(
            \ "diff-utils-obtain-backward",
            \ "[do",
            \ ":\<C-U>call diff_utils#do(v:count, 'diffget', '', 'backward')\<CR>",
            \ "n",
            \ g:diff_utils_default_mapping,
            \ )

call s:do_map(
            \ "diff-utils-obtain-line",
            \ "dO",
            \ ":\<C-U>call diff_utils#do(v:count, 'diffget', '.', '')\<CR>",
            \ "n",
            \ g:diff_utils_default_mapping,
            \ )

call s:do_map(
            \ "diff-utils-put",
            \ "dp",
            \ ":\<C-U>call diff_utils#do(v:count, 'diffput', '', '')\<CR>",
            \ "n",
            \ g:diff_utils_default_mapping,
            \ )

call s:do_map(
            \ "diff-utils-put-forward",
            \ "]dp",
            \ ":\<C-U>call diff_utils#do(v:count, 'diffput', '', 'forward')\<CR>",
            \ "n",
            \ g:diff_utils_default_mapping,
            \ )

call s:do_map(
            \ "diff-utils-put-backward",
            \ "[dp",
            \ ":\<C-U>call diff_utils#do(v:count, 'diffput', '', 'backward')\<CR>",
            \ "n",
            \ g:diff_utils_default_mapping,
            \ )

call s:do_map(
            \ "diff-utils-put-line",
            \ "dP",
            \ ":\<C-U>call diff_utils#do(v:count, 'diffput', '.', '')\<CR>",
            \ "n",
            \ g:diff_utils_default_mapping,
            \ )

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
let &cpo = s:save_cpo
unlet s:save_cpo
" vim:foldmethod=marker
" vim: textwidth=78
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

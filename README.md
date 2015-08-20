Description
===========
Enhances the built in diff mode commands |do| and |dp| by making them
repeatable with '.' via repeat.vim, and add some additonal helper commands for
geting or putting a single line.

Requirements
-----------
* [repeat.vim](https://github.com/tpope/vim-repeat)

Usage
=====
| Mode   | Default Key | `<Plug>` Map                         | Description                                                                                            |
| ----   | ----------- | --------------------------------     | ------------------------------------------------------------------------------------------------------ |
| normal | do          | `<Plug>(diff-utils-obtain)`          | An enhanced `do` that can be repeated with '.' including the `[count]` that is used as the `[bufspec]` |
| normal | ]do         | `<Plug>(diff-utils-obtain-forward)`  | Like the enhanced `do` followed by ]c                                                                  |
| normal | [do         | `<Plug>(diff-utils-obtain-backward)` | Like the enhanced `do` followed by [c                                                                  |
| normal | dp          | `<Plug>(diff-utils-put)`             | An enhanced `dp` that can be repeated with '.' including the `[count]` that is used as the `[bufspec]` |
| normal | ]dp         | `<Plug>(diff-utils-put-forward)`     | Like the enhanced `dp` followed by ]c                                                                  |
| normal | [dp         | `<Plug>(diff-utils-put-backward`     | Like the enhanced `dp` followed by [c                                                                  |
| normal | dO          | `<Plug>(diff-utils-obtain-line)`     | Like the enhanced do command but gets/obtains a single line                                            |
| normal | dP          | `<Plug>(diff-utils-put-line)`        | Like the enhanced dp command but puts single line                                                      |

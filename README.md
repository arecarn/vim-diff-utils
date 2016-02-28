diff-utils
==========
Enhances the built in diff mode commands `do` and `dp` by making them repeatable
with `.` via [repeat.vim](https://github.com/tpope/vim-repeat) , and add some
additional helper commands for getting or putting a single line.

Usage
-----
| Mode   | Key Binding | Description                                                                                            |
| ------ | ----------- | ------------------------------------------------------------------------------------------------------ |
| normal | do          | An enhanced `do` that can be repeated with '.' including the `[count]` that is used as the `[bufspec]` |
| normal | ]do         | Like the enhanced `do` followed by ]c                                                                  |
| normal | [do         | Like the enhanced `do` followed by [c                                                                  |
| normal | dp          | An enhanced `dp` that can be repeated with '.' including the `[count]` that is used as the `[bufspec]` |
| normal | ]dp         | Like the enhanced `dp` followed by ]c                                                                  |
| normal | [dp         | Like the enhanced `dp` followed by [c                                                                  |
| normal | dO          | Like the enhanced do command but gets/obtains a single line                                            |
| normal | dP          | Like the enhanced dp command but puts single line                                                      |
| normal | du          | A mapping to `:diffupdate` command                                                                     |

Requirements
-----------
* [repeat.vim](https://github.com/tpope/vim-repeat)


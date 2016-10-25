let loaded_matchparen = 1
set noincsearch
set nohlsearch

scriptencoding utf-8
set encoding=utf-8

" from jmates
" argh. hate help.
map <f1> <nop>
inoremap <f1> <nop>
syntax off

" Real tab chars.
set noexpandtab

" Tab spacing.
set tabstop=8
set shiftwidth=8
set softtabstop=8

" from http://vim.wikia.com/wiki/Converting_tabs_to_spaces
" work ppl use 4 space tabs. ew.
" Think "little tabs" and "big tabs":
map \t <Esc>:set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
map \T <Esc>:set noexpandtab tabstop=8 shiftwidth=8 softtabstop=8<CR>

# sometimes i also work with human languages
map <f2> <Esc>:set textwidth=80 <CR> gggqG<CR>

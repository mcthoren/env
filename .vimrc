" kill paren matching one way or another
let loaded_matchparen = 1
set noshowmatch

" if MatchParen plugin, use this
"NoMatchParen

set noincsearch
set nohlsearch

" turn off annoying beeping and flashing. ffs.
set noerrorbells
set visualbell
set t_vb=

" autoindenting can go to hell
set noautoindent
set nocindent
set nosmartindent
set indentexpr=

" reset colors in case some clever git set a scheme that janked them
colorscheme default

scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8
setglobal fenc=utf-8

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

" sometimes i also work with human languages
map <f2> <Esc>:set textwidth=80 <CR> gggqG<CR>

map <f3> <Esc>:setlocal spell spelllang=de_DE<CR> 
map <f4> <Esc>:setlocal spell spelllang=us_EN<CR> 
map <f5> <Esc>:!aspell --lang=en -c %<CR> 
map <f6> <Esc>:!aspell --lang=de -c %<CR> 
map <f7> <Esc>:!aspell --lang=en --mode=tex -c %<CR> 
map <f8> <Esc>:!aspell --lang=de --mode=tex -c %<CR> 

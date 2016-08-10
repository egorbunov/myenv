execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
set number
set ruler
let g:nerdtree_tabs_open_on_console_startup=1

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab
map <silent> <C-k><C-b> :NERDTreeToggle<CR>
map <silent> <C-k><C-f> :NERDTreeFocusToggle<CR>


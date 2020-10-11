set mouse-=a
set ttymouse-=a
set laststatus=2

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'https://github.com/dag/vim-fish.git'
Plug 'itchyny/lightline.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()

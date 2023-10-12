set relativenumber
set colorcolumn=81
set tabstop=3
set shiftwidth=3
set noshowmode

set completeopt+=menuone,noinsert

call plug#begin()
Plug 'fneu/breezy'
Plug 'itchyny/lightline.vim'
call plug#end()

set termguicolors
colorscheme breezy
set background=light
let g:lightline = {'colorscheme': 'breezy'}

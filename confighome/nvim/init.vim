set relativenumber
set colorcolumn=81
set tabstop=3
set shiftwidth=3
set noshowmode

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'fneu/breezy'
Plug 'itchyny/lightline.vim'
call plug#end()

set termguicolors
colorscheme breezy
set background=light
let g:lightline = {'colorscheme': 'breezy'}

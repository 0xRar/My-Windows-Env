" 0xRar nvim config
" Also using kickstart.nvim (https://github.com/nvim-lua/kickstart.nvim/blob/master/init.lua) 

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'neoclide/coc.nvim' " :CocInstall coc-python
set encoding=UTF-8

call plug#end()

" NERDTree
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" airline settings
set showtabline=2

" Global Color Scheme/Themes
set background=dark
set termguicolors
:colorscheme deep-space

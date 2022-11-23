" 0xRar nvim config

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a


" Download vim-plug
" -------------------------
"
" md ~\AppData\Local\nvim\autoload
" $uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
" (New-Object Net.WebClient).DownloadFile(
"  $uri,
"  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
"    "~\AppData\Local\nvim\autoload\plug.vim"
"  )
" )

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

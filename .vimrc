" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'kristijanhusak/vim-hybrid-material'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'pangloss/vim-javascript'

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-fugitive'

Plug 'nathanaelkane/vim-indent-guides'

" Initialize plugin system
call plug#end()

" Material Theme with iTerm3
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
colorscheme hybrid_material
syntax enable

" Tab Settings
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set shiftwidth=4

" Line breaks and indenting
set lbr
set tw=500
set ai
set si
set wrap " Wrap lines

" Visuals
set number
set cursorline
filetype indent on
set wildmenu            " visual autocomplete for command menu
set showmatch

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" Configure Airline
set laststatus=2
let g:airline_theme = "hybrid"
let g:airline#extensions#tabline#enabled = 1

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" Configure NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


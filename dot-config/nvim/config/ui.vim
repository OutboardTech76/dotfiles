" +-------------------------+
" | Interface configuration |
" +-------------------------+
  
" Enable the line number and set them to relative
set number
set relativenumber
 
" Search options
set incsearch
set ignorecase
set smartcase
 
" Tab and indent configuration
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=0

" Show cursorline brighter
set cursorline
 
" Dont show current mode
set noshowmode 
 
" Enable filetype, plugins and indent
filetype plugin indent on
 
syntax on
syntax enable
 
" Enable colors and ser colorscheme
if (has("termguicolors"))
  set termguicolors
endif
 
colorscheme onedark 

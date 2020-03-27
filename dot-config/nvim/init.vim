call plug#begin('~/.config/nvim/bundle')
  
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'zchee/deoplete-jedi'
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }

"---- TMux integration --------"
Plug 'christoomey/vim-tmux-navigator'

" Rainbow parentheses
Plug 'frazrepo/vim-rainbow'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'

Plug 'tpope/vim-surround'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'sbdchd/vim-run'

" Python autofold
Plug 'tmhedberg/SimpylFold'

" Syntax check "
Plug 'w0rp/ale'

"---- Latex plugins -------"
Plug 'lervag/vimtex'
Plug 'donRaphaco/neotex', { 'for': 'tex' }
"Plug 'matze/vim-tex-fold'
"-------------------------"

"---- Snippets -------"
" Track the engine
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine
Plug 'honza/vim-snippets'
"------------------------"

" Integration of git inside nvim
Plug 'tpope/vim-fugitive'

" Collection of language packs
"Plug 'sheerun/vim-polyglot'


" Highlight syntax for i3 config file
Plug 'mboughaba/i3config.vim'

 
" Highlight syntax for Dockerfile
Plug 'ekalinin/Dockerfile.vim'

" Highlight syntax for JSON files
Plug 'elzr/vim-json'


call plug#end()

" Python fold

" Enable rainbow parenthesis 
let g:rainbow_active = 1

"---- Snippets configuration -----"
let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"----------------------------------"


"" ----- ALE configuration ------------"
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}

"" ------------------------------------"

" --- Airline configuration -----------"
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = 'E:'
let g:airline#extensions#ale#warning_symbol = 'W:'

let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
" Use powerline fonts and symbols"
let g:airline_powerline_fonts = 1
set noshowmode " Dont show current mode"
let g:airline_theme='onedark'
"---------------------------------------"


"------ Autocomplete options ---------"
let g:deoplete#enable_at_startup = 1
" Use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
"inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" Close the documentation window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"-------------------------------------"

filetype plugin indent on


"Maps leader key '\' to ','. Use ',cc' to comment a selected text and ',cu' to
"uncomment
let mapleader=","

"------ Latex configuration ------"
call deoplete#custom#var('omni', 'input_patterns', {
            \ 'tex': g:vimtex#re#deoplete
            \})


let g:neotex_enabled = 2 " On by default"
let g:tex_flavor = 'latex'
"----------------------------------"

"------ Python syntax configuration ------"
"let g:python_highlight_all = 1

" i3 syntax configuration
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

" Enable auto fold for python
"set foldmethod=syntax
"set foldlevelstart=0

set number
set relativenumber

set incsearch
set ignorecase
set smartcase

" Tab and indent configuration
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=0

"----- Navigate split screen ----------"
"nmap <c-v> :wincmd v<CR>
nmap <silent> <c-k> :wincmd k<CR> 
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
"---------------------------------------"  

nnoremap <c-CR> <S-o> <Esc>
nnoremap <CR> o <Esc>
 
imap <C-space> <Esc>
vmap <C-space> <Esc>


if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
 
 
 " UI configuration
syntax on
syntax enable

colorscheme onedark 
 

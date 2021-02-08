" Autoinstall plugin manager
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
end

set nocompatible

call plug#begin('~/.config/nvim/bundle')
" CoC 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
 
" Rainbow parentheses
Plug 'frazrepo/vim-rainbow'

"---- NerdTree and commenter ----"
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
" Icons for nerdtree
Plug 'ryanoasis/vim-devicons'
"--------------------------------"

" Change, add or delete surrounds (parenthesis, brackets, etc)
Plug 'tpope/vim-surround'

"------ Statusline -------"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"-------------------------"

Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'

" Python autofold
Plug 'tmhedberg/SimpylFold'

"---- Latex plugins -------"
Plug 'lervag/vimtex'
Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug 'matze/vim-tex-fold'
"-------------------------"

"---- Snippets -------"
Plug 'honza/vim-snippets'
"------------------------"

" Integration of git inside nvim
Plug 'tpope/vim-fugitive'

"----- Syntax highlight -----"
" Collection of language packs
Plug 'sheerun/vim-polyglot'
"---------------------------"
call plug#end()


for f in glob('~/.config/nvim/config/*.vim',0,1)
    execute 'source' f
endfor



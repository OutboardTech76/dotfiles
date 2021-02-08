" +-------------------------------+
" | NERDTree plugin configuration |
" +-------------------------------+


" Open nerdtree if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
 
 
" Toggle NERDTree
nnoremap <silent> <F3> :NERDTreeToggle<CR>

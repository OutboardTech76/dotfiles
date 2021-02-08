" +----------------+
" | General remaps |
" +----------------+

 
"----- Navigate split screen ----------"
nnoremap <silent> <c-k> :wincmd k<CR> 
nnoremap <silent> <c-j> :wincmd j<CR>
nnoremap <silent> <c-h> :wincmd h<CR>
nnoremap <silent> <c-l> :wincmd l<CR>
"---------------------------------------"  


"---- Resize when split screen --------"
nnoremap <silent> <Leader>+ :exe "resize +5" <CR>
nnoremap <silent> <Leader>- :exe "resize -5" <CR>
nnoremap <silent> <Leader>> :exe "vertical resize +5" <CR>
nnoremap <silent> <Leader>< :exe "vertical resize -5" <CR>
"------------------------------------------"

 
" Insert white line 
nnoremap <CR> o <Esc>
 
 
"Maps leader key '\' to ','
let mapleader=","

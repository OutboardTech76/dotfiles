" +------------------------------------+
" | Airline configuration (statusline) |
" +------------------------------------+

 
" Show buffers as tabs
let g:airline#extensions#tabline#enabled = 1  
" Only show file name
let g:airline#extensions#tabline#fnamemod = ':t'  
" Use powerline fonts and symbols"
let g:airline_powerline_fonts = 1
" Use same them as vim
let g:airline_theme='onedark'

let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'E:'
let airline#extensions#coc#warning_symbol = 'W:'


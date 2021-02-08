" +----------------------+
" | VimTex configuration |
" +----------------------+


" Enable neotex by default
let g:neotex_enabled = 2 
let g:tex_flavor = 'latex'
" Set pdf viewer
let g:vimtex_view_method = 'zathura'
 
 
" Use F2 to compile/stop compilation
au FileType tex nnoremap <F2> :VimtexCompile<CR>

" Remaps to insert bold, italic and items 
au FileType tex nnoremap <Leader>ti a\textit{}<Esc>i
au FileType tex nnoremap <Leader>tb a\textbf{}<Esc>i
au FileType tex nnoremap <Leader>it o\item 

" Remaps to change one word from normal to italic or bold
au FileType tex nnoremap <Leader>wti viwdi\textit{}<Esc>hp
au FileType tex nnoremap <Leader>wtb viwdi\textbf{}<Esc>hp

" +--------------------------------------+
" | Markdown viewer plugin configuration |
" +--------------------------------------+


" Refresh markdown file only when saving it
let g:mkdp_refresh_slow = 1

" Use F2 to launch browser
au FileType markdown nnoremap <F2> :MarkdownPreview<CR>

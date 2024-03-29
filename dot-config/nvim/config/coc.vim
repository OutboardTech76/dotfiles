" +-------------------+
" | CoC configuration |
" +-------------------+
"  

" Autoinstall CoC extensions
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-texlab', 'coc-clangd', 'coc-pyright', 'coc-snippets']
 
 

" Use tab to rotate through completion obtions
inoremap <silent><expr> <TAB>
            \ coc#pum#visible() ? coc#pum#next(1) :
            \ CheckBackspace() ? "\<Tab>" :
            \ coc#refresh()
"inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~ '\s'
endfunction

" Use shift tab to use snippets
inoremap <silent><expr> <s-tab>
            \ pumvisible() ? coc#_select_confirm() :
            \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
            \ <SID>check_back_space() ? "\<s-tab>" :
            \ coc#refresh()

" Use tab when using snippets to rotate trhough snippet elements 
let g:coc_snippet_next = '<tab>'

" Refresh autocompletion suggestions with control space
inoremap <silent><expr> <c-space> coc#refresh()

"---- Move through CoC floating menu with C-f and C-b --------"
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
 
"-------------------------------------------------------------"

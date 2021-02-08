" +-------------------+
" | CoC configuration |
" +-------------------+
"  

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~ '\s'
endfunction

" Use tab to rotate through completion obtions
inoremap <silent><expr> <Tab>
            \ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<Tab>" :
			\ coc#refresh()
 
" Use shift tab to use snippets
inoremap <silent><expr> <s-tab>
            \ pumvisible() ? coc#_select_confirm() :
            \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
            \ <SID>check_back_space() ? "\<s-tab>" :
            \ coc#refresh()

" Use tab when using snippets to rotate trhough snippet elements 
let g:coc_snippet_next = '<tab>'

" Use <c-space> to trigger completion
"inoremap <silent><expr> <c-space> coc#refresh() 

" Autoinstall CoC extensions
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-texlab', 'coc-pyright', 'coc-clangd']

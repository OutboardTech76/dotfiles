" +------------------------------+
" | AutoPairs plugin config file |
" +------------------------------+

let g:AutoPairsFlyMode = 0
au FileType xml,html let b:AutoPairs = AutoPairsDefine({'<!--' : '-->', '<' : '>'})

" +------------------------------+
" | AutoPairs plugin config file |
" +------------------------------+

let g:AutoPairsFlyMode = 1
au FileType xml,html let b:AutoPairs = AutoPairsDefine({'<!--' : '-->', '<' : '>'})

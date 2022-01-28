Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_general_viewer='evince' "PDF viewer to open compiled document
let g:vimtex_quickfix_mode=0
set conceallevel=2
let g:tex_conceal='abdmg'

" keymaps
nmap <leader>c :VimtexCompile<CR>
nmap <leader>co :VimtexCompileOutput<CR>

autocmd VimLeave *.tex !texclear %

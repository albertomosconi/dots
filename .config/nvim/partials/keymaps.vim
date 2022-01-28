" keybindings
let g:mapleader = "\<Space>" " set leader key to space

nmap :hs :sp
nmap <leader>h :wincmd h<CR>
nmap <leader>j :wincmd j<CR>
nmap <leader>k :wincmd k<CR>
nmap <leader>l :wincmd l<CR>
nmap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nmap <Leader>ps :Rg<SPACE>
nmap <silent> <Leader>+ :vertical resize +5<CR>
nmap <silent> <Leader>- :vertical resize -5<CR>
imap jk <Esc>


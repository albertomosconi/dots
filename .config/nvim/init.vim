runtime partials/base.vim " base config
runtime partials/statusline.vim " statusline config
runtime partials/keymaps.vim " keymaps

" PLUGINS
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')

    runtime partials/latex.vim " latex
    runtime partials/snippets.vim " snippets
    Plug 'tpope/vim-commentary' " comment and uncomment lines
    Plug 'ap/vim-css-color' " preview colors
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " sytnax highlighting

call plug#end()

" statusline color for active vs inactive windows
hi InactiveWindow guibg=#000000
set winhighlight=StatusLine:StatusLine,StatusLineNC:InactiveWindow


let g:mapleader = "\<Space>" " set leader key to space

set encoding=utf-8
set fileencoding=utf-8
set number relativenumber
set hidden
set ruler
set mouse=a
set splitbelow
set splitright
" set t_Co=256
" set termguicolors
set tabstop=4 softtabstop=4
set shiftwidth=4			        " number of spaces for indentation
set smarttab				        " tabs are smart
set expandtab				        " converts tabs to spaces
set smartindent				        " indent is smart
set autoindent				        " good autoindent
set nobackup                		" recommended by coc
set nowritebackup           		" recommended by coc
set updatetime=300          		" faster completion
set clipboard=unnamedplus   		" copy pasting everywhere
set undodir=$XDG_CONFIG_HOME/nvim/undodir
set undofile
set incsearch
set fillchars+=vert:\  " remove vertical line from split line
set nocompatible
set title

set path+=**
set wildmenu
set wildignore+=**/node_modules/**

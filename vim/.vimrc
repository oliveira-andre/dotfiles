" vim-plug plugins
call plug#begin('~/.vim/plugged')
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'zivyangll/git-blame.vim'
Plug 'tpope/vim-rails'
call plug#end()

colorscheme Tomorrow-Night-Eighties
filetype plugin indent on " identify the type of archive  
syntax on " color editor 

" ident size
set tabstop=2
set shiftwidth=2
set backspace=2

set expandtab " use spaces unless tabs
set number " numerating lines 
set relativenumber " calculate distance between lines
set incsearch " feedback when i'm searchingh
set hlsearch " highlighting search
set nobackup " no backup files
set nowritebackup " only in case you don't want a backup file while editing
set noswapfile " no swap files
set path+=** " find paths and subpaths dynamicaly
set wildmenu " show many options
set mouse=a " accept mouse click

nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>


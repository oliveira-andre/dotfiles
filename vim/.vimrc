" vim-plug plugins
call plug#begin('~/.vim/plugged')
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tpope/vim-rails'
Plug 'storyn26383/vim-vue'
Plug 'leafgarland/typescript-vim'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

colorscheme dracula
set background=dark

let g:dracula_italic = 0 " fix bug classes background highlight

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

let mapleader = " "

" remap keys
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>nt :NERDTree<CR>


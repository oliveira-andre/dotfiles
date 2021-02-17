" vim-plug plugins
call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tpope/vim-rails'
Plug 'storyn26383/vim-vue'
Plug 'leafgarland/typescript-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

packadd! dracula_pro

let g:dracula_colorterm = 0
let g:dracula_italic = 0 " fix bug classes background highlight

colorscheme dracula_pro

filetype indent plugin on " identify the type of archive  
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
let NERDTreeShowLineNumbers = 1

" remap navigation cursor screen keys
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Open or refresh nerdtree
nnoremap <leader>nt :NERDTree<CR>

" remove highlight after search
nnoremap <leader>nh :noh<CR>

" Manage tabs
nnoremap <leader>tn :tabe<CR>
nnoremap <leader>tc :tabc<CR>
nnoremap <leader>to :tabo<CR>

" Manage buffers
nnoremap <leader>bfs :buffers<CR>
nnoremap <leader>bf :buffer
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>

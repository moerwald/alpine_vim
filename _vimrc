call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'OmniSharp/omnisharp-vim'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-dispatch'
Plug 'Shougo/vimproc.vim'
Plug 'dimasg/vim-mark'
Plug 'pprovost/vim-ps1'
" Doesn't work in Docker
"Plug 'rakr/vim-one'

call plug#end()

"set guifont=Source\ Code\ Pro\ for\ Powerline\ 20
set guioptions=agit

" Be incompatible to vim
set nocompatible
set noerrorbells
syntax enable
filetype plugin indent on
set autoindent
" Use spaces instead of tabs, 4 space for intendation
set expandtab
set shiftwidth=4
set softtabstop=4
" VIM will backup a non stored buffer
set hidden
set encoding=utf-8
" Highlight search
set hlsearch
set history=1000
"line numbers
set number
set relativenumber

set scrolloff=7

set wildmenu

" Folding
set foldcolumn=1
set foldmethod=syntax
                
" Deactivate beeps -> http://vim.wikia.com/wiki/Disable_beeping
set noeb vb t_vb=                


" Undo options
set undofile
set undodir=~/vim/vimundo/vimundo
set undolevels=1000

" alternative ways to save a file in the different modes
map <F2> :w<cr>
imap <F2> <esc>:w<cr>l
vmap <F2> <esc>:w<cr>

" own keys -> start combination via ,
let mapleader=","

" ! stays for toggle
map <leader>s :setlocal spell!<cr>
" copy everything to +-register and to default register
map <leader>y :%y+<cr>:%y<cr>
map <leader>q :q<cr>

" own bindings for windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

colorscheme desert
set background=dark

" Airline settings
let g:airline_powerline_fonts = 1
set t_Co=256


" NERDTree bindings
map <C-n> :NERDTreeToggle<cr>


" OmniSharp won't work without this setting
filetype plugin on

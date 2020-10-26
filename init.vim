let mapleader = " "

language en_US
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set ruler
set showmatch
set listchars=tab:··
set list
set ignorecase
set hlsearch
set clipboard=unnamed
set shellslash
set scrolljump=10
set mouse=a
set number
set guicursor=i:block
set statusline=
set statusline+=%=
syntax enable
filetype indent plugin on
autocmd Filetype python setlocal ts=2 sts=2 sw=2

set termguicolors
colors onehalfdark 

tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <Space> <NOP>
nnoremap x "_x
nnoremap dd "_dd
nnoremap a i
nnoremap i a
nnoremap dw "_diw
nnoremap D "_D
nnoremap cw ciw
vnoremap d "_d
nnoremap A I
nnoremap I A
nnoremap yw yiw
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
nmap <C-z> <Nop>
nnoremap ) 10j
nnoremap ( 10k

let mapleader = " "

language en_US
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
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
syntax enable
set guifont=Fira\ Code:9


call plug#begin("~/.vim/plugged")
  Plug 'jiangmiao/auto-pairs'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'scrooloose/nerdcommenter'
call plug#end()

set termguicolors
colors candle-grey 

" nerdcommenter
filetype plugin on
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
nmap <C-c> <plug>NERDCommenterToggle 
xmap <C-c> <plug>NERDCommenterToggle 

" auto-pairs
let g:AutoPairsMultilineClose=0

" ctrlp
set wildignore+=*\\node_modules\\*,*.swp,*.zip,*.exe
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
let g:ctrlp_working_path_mode = ''
"autocmd VimEnter * CtrlP

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <Space> <NOP>

" custom maps
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
nnoremap ( {
nnoremap ) }


" statusline
set statusline=
set statusline+=%=
set statusline+=%l,%-25c 
set statusline+=%-10L

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

call plug#begin("~/.vim/plugged")	
  Plug 'ctrlpvim/ctrlp.vim'	
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'preservim/nerdcommenter'
call plug#end()

set wildignore+=*\\node_modules\\*,*.swp,*.zip,*.exe	
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:15'	
let g:ctrlp_working_path_mode = ''

let g:coc_node_path = 'C:\Users\norfl\node\node'
let g:coc_global_extensions = [ 'coc-tsserver', 'coc-json', 'coc-pairs' ]
set pumheight=25
set signcolumn=yes

" if hidden is not set, TextEdit might fail.
set hidden
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<Tab>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

map <C-c> <plug>NERDCommenterToggle
let g:NERDSpaceDelims = 1

nmap <silent> gd <Plug>(coc-definition)

set background=dark
set termguicolors
colors ayu 

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

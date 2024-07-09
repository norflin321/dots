syntax enable
filetype indent plugin on
scriptencoding utf-8
set encoding=UTF-8
set fileencoding=utf-8
set tabstop=2 softtabstop=2 shiftwidth=2 noet
autocmd Filetype rust setlocal tabstop=2 shiftwidth=2 softtabstop=2 noet
autocmd Filetype go setlocal tabstop=2 shiftwidth=2 softtabstop=2 noet
autocmd Filetype python setlocal tabstop=2 shiftwidth=2 softtabstop=2 noet

set autoindent
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nosm
set nosc
set nolist
set ignorecase
set hlsearch
set clipboard=unnamedplus
set shellslash
set scrolloff=5
set sidescrolloff=10
set mouse=a
set autoread
set showtabline=0
set hidden
set shortmess+=c
set completeopt=menuone,noinsert,noselect
set wildignore+=**/node_modules/**,*.swp,*.zip,*.exe,**/dist/**,.DS_Store
set laststatus=2
set showmode
set splitbelow
set splitright
set background=dark
set termguicolors
set cmdheight=1
set mousescroll=ver:1,hor:0
set smoothscroll
set number
set signcolumn=number
set updatetime=100

call plug#begin("~/.vim/plugged")
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'tpope/vim-commentary'
  Plug 'alvan/vim-closetag'
  Plug 'jiangmiao/auto-pairs'
  Plug 'axkirillov/hbac.nvim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'nvim-treesitter/playground'
  Plug 'kyazdani42/nvim-tree.lua', { 'commit': '8b8d457' }
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'eugen0329/vim-esearch'
  Plug 'stevearc/aerial.nvim'
  Plug 'lewis6991/satellite.nvim'
  Plug 'rust-lang/rust.vim'
  Plug 'norflin321/nvim-gps'
  Plug 'zivyangll/git-blame.vim'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
  Plug 'kevinhwang91/nvim-hlslens'
  Plug 'eandrju/cellular-automaton.nvim' 
  Plug 'chrisgrieser/nvim-chainsaw'
call plug#end()

map q: :q
nnoremap <Space> <NOP>
nnoremap <silent> <Esc> :noh<CR>
nmap Q <NOP>
vmap Q <NOP>
nmap # <NOP>
vmap # <NOP> nmap <c-;> <NOP>
vmap <c-;> <NOP>
nmap <c-.> <NOP>
vmap <c-.> <NOP>
nmap <c-b> <NOP>
vmap <c-b> <NOP>
nmap <c-e> <NOP>
vmap <c-e> <NOP>
nmap <c-t> <NOP>
vmap <c-t> <NOP>
nmap <c-u> <NOP>
vmap <c-u> <NOP>
nmap <c-]> <NOP>
vmap <c-]> <NOP>
nmap <c-'> <NOP>
vmap <c-'> <NOP>
nmap <c-v> <NOP>
vmap <c-v> <NOP>
nmap q <NOP>
vmap q <NOP>
nmap s <NOP>
nmap s <NOP>
nmap S <NOP>
nmap . <NOP>
vmap . <NOP>
nmap , <NOP>
vmap , <NOP>
nmap - <NOP>
vmap - <NOP>
nmap <c--> <NOP>
vmap <c--> <NOP>
nmap <c-1> <NOP>
vmap <c-1> <NOP>
nmap <c-2> <NOP>
vmap <c-2> <NOP>
nmap <c-3> <NOP>
vmap <c-3> <NOP>
nmap <c-4> <NOP>
vmap <c-4> <NOP>
nmap <c-5> <NOP>
vmap <c-5> <NOP>
nmap <c-6> <NOP>
vmap <c-6> <NOP>
nmap <c-7> <NOP>
vmap <c-7> <NOP>
nmap <c-8> <NOP>
vmap <c-8> <NOP>
nnoremap <expr> n 'Nn'[v:searchforward]
xnoremap <expr> n 'Nn'[v:searchforward]
onoremap <expr> n 'Nn'[v:searchforward]
nnoremap <expr> N 'nN'[v:searchforward]
xnoremap <expr> N 'nN'[v:searchforward]
onoremap <expr> N 'nN'[v:searchforward]
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
nnoremap x "_x
nnoremap dd "_dd
nnoremap dw "_diw
nnoremap D "_D
nnoremap cw ciw
vnoremap d "_d
nnoremap yw yiw
nnoremap <S-Enter> O<Esc>
nnoremap <C-z> <Nop>
nnoremap ) 15j
vnoremap ) 15j
nnoremap ( 15k
vnoremap ( 15k
nnoremap L 15l
vnoremap L 15l
nnoremap H 15h
vnoremap H 15h
map 8 <Nop>
map 7 <Nop>
map 6 <Nop>
map 5 <Nop>
map 4 <Nop>
map 3 <Nop>
map 2 <Nop>
map 1 <Nop>
map 9 $
map 8 %
vmap < <gv
vmap > >gv
vmap <silent> H :left<CR>gv
vmap <silent> L :right<CR>gv
vmap <silent> <C-c> gc
nmap <silent> <C-c> gcc
nnoremap J mzJ`z
cnoremap <c-v> <c-r>+
map <CR> <Nop>
map ga <Nop>
nnoremap D "_dd
nnoremap <silent> * :let @/= '\<' . expand('<cword>') . '\>' <bar> set hls <cr>
nnoremap <silent> <c-m> :CtrlPMRUFiles<CR>
nnoremap <silent> <c-n> :NvimTreeFindFileToggle<CR>
vmap K <Nop>
map p ]p
map P pV=
nmap <silent> <c-t> :AerialToggle<CR>
nnoremap z <NOP>
nnoremap z zz
nmap <c-f> <plug>(esearch)
vmap <c-f> <plug>(operator-esearch-prefill)
nmap <silent> C :ChainSaw variableLog<CR>

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:50'
let g:ctrlp_working_path_mode = ''
let g:ctrlp_prompt_mappings = { 'AcceptSelection("h")': ['<c-h>'], 'AcceptSelection("v")': ['<c-v>'], 'AcceptSelection("e")': ['<c-o>', '<cr>'] }
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {'dir': '\android$\|\ios$\|\.git$'}

let g:AutoPairsMultilineClose=0
let g:closetag_filenames = '*.html,*.tsx,*.jsx,*.vue'

let g:esearch = {}
let g:esearch.prefill = ['last']
let g:esearch.regex = 1
let g:esearch.textobj = 0
let g:esearch.case = 'smart'
let g:esearch.default_mappings = 0
let g:esearch.name = '[esearch]'
let g:esearch.win_map = [ ['n', 'o', '<plug>(esearch-win-open)'] ]

func! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    exe 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunc

func! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunc

let g:coc_global_extensions = [ "coc-tsserver", "coc-json", "coc-go", "coc-prettier", "coc-css", "coc-pyright", "coc-clangd", "coc-rust-analyzer", "coc-lua", "coc-eslint", "coc-pretty-ts-errors" ]

nmap <silent> K :call <SID>show_documentation()<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gn <Plug>(coc-rename)
nmap <silent> gf <Plug>(coc-fix-current)
vmap <silent> ga <Plug>(coc-codeaction)
nmap <silent> <C-d> <Plug>(coc-diagnostic-next-error)
vmap <silent> f <Plug>(coc-format-selected)

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#_select_confirm() : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
inoremap <expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
inoremap <expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"
autocmd CursorHold * silent call CocActionAsync('highlight')

command H exe ":TSHighlightCapturesUnderCursor"
command CF exe ":e $MYVIMRC"
command BL exe ":call gitblame#echo()"
command PI exe ":PlugInstall"
command PC exe ":PlugClean"
command PU exe ":PlugUpdate"
command GG exe ":CellularAutomaton make_it_rain"
command CC exe ":ChainSaw removeLogs"

augroup SourceConfigAfterWrite
  autocmd!
  autocmd BufWritePost init.vim source %
augroup END

lua require('main')

func! NvimGps() abort
  return luaeval("require'nvim-gps'.is_available()") ? luaeval("require'nvim-gps'.get_location()") : ""
endf

set statusline=%{&modified?'\[+]\ ':''}%t\ %h%r%{NvimGps()}%=%-5.(%l,%c%)\ %L

colors dogrun_custom

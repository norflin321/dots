syntax enable
filetype indent plugin on
scriptencoding utf-8
set encoding=UTF-8
set fileencoding=utf-8
set tabstop=2 softtabstop=2
set shiftwidth=2
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
set noexpandtab
set background=dark
set termguicolors
set cmdheight=1
set mousescroll=ver:1,hor:0
set smoothscroll
set nonumber
set signcolumn=yes

call plug#begin("~/.vim/plugged")
  Plug 'nvim-lua/plenary.nvim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-commentary'
  Plug 'itchyny/vim-gitbranch'
	Plug 'maxmellon/vim-jsx-pretty'
  Plug 'alvan/vim-closetag'
  Plug 'antoinemadec/FixCursorHold.nvim'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'nvim-treesitter/playground'
  Plug 'dyng/ctrlsf.vim'
	Plug 'nvim-tree/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua', { 'commit': '8b8d457' }
	Plug 'zivyangll/git-blame.vim'
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'lewis6991/satellite.nvim'
	Plug 'norflin321/nvim-gps'
	Plug 'norflin321/aerial.nvim'
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
map p ]p
map ga <Nop>
nnoremap D "_dd
nnoremap <silent> * :let @/= '\<' . expand('<cword>') . '\>' <bar> set hls <cr>
nnoremap <silent> <c-m> :CtrlPMRUFiles<CR>
nnoremap <silent> <c-n> :NvimTreeFindFileToggle<CR>
vmap K <Nop>
map p pV=
nmap <silent> <c-t> :AerialToggle<CR>
nnoremap z <NOP>
nnoremap z zz

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:50'
let g:ctrlp_working_path_mode = ''
let g:ctrlp_prompt_mappings = { 'AcceptSelection("h")': ['<c-h>'], 'AcceptSelection("v")': ['<c-v>'], 'AcceptSelection("e")': ['<c-o>', '<cr>'] }
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {'dir': '\android$\|\ios$\|\.git$'}

let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_auto_focus = {'at': 'start'}
let g:ctrlsf_search_mode = 'async'
let g:ctrlsf_auto_close = {'compact': 1}
let g:ctrlsf_backend = 'rg'
let g:ctrlsf_ignore_dir = ['node_modules', 'dist']
let g:ctrlsf_mapping = {'quit': '<Esc>', 'next': 'j', 'prev': 'k'}
let g:ctrlsf_regex_pattern = 0
let g:ctrlsf_auto_preview = 1
let g:ctrlsf_compact_winsize = '05'

let g:AutoPairsMultilineClose=0

let g:closetag_filenames = '*.html,*.tsx,*.jsx,*.vue'

let g:cursorhold_updatetime = 200

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

func! s:search()
  call inputsave()
	let pattern = input('CtrlSF: ')
  call inputrestore()
	redraw
	if pattern != ''
		exe 'CtrlSF ' . string(pattern)
	endif
endfunc

let g:coc_global_extensions = [ 'coc-tsserver', 'coc-json', 'coc-go', 'coc-prettier', 'coc-css', 'coc-rust-analyzer', 'coc-pyright', 'coc-eslint8' ]

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
vmap <silent> <C-f> <Plug>CtrlSFVwordExec
nmap <C-f> :call <SID>search()<CR>

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#_select_confirm() : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
inoremap <expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
inoremap <expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"

func! CloseHiddenBuffers()
	let visible = {}
	for t in range(1, tabpagenr('$'))
		for b in tabpagebuflist(t)
			let visible[b] = 1
		endfor
	endfor
	for b in range(1, bufnr('$'))
		if bufloaded(b) && !has_key(visible, b)
			exe 'bd ' . b
		endif
	endfor
endfun

func! FilePath()
  let path = expand('%:F')
  let pathSplit = split(path, '[/\\]')
	let length = len(pathSplit) - 1
	let before = length > 3 ? ".../" : ""
	if length < 0
		return path
	endif
	let ret = length < 3 ? path : join(pathSplit[length-2:length], "/")
	return before . ret . " "
endfunc

lua require('main')

command BC exe ":call CloseHiddenBuffers()"
command H exe ":TSHighlightCapturesUnderCursor"
command CF exe ":e $MYVIMRC"
command SF exe ":CtrlSFToggle"
command BL exe ":call gitblame#echo()"
command PI exe ":PlugInstall"
command PC exe ":PlugClean"
command PU exe ":PlugUpdate"
command CC exe ":CtrlPClearAllCaches"
command R exe ":edit!"

augroup SourceConfigAfterWrite
	autocmd!
	autocmd BufWritePost init.vim source %
augroup END

lua require("nvim-gps").setup({ depth = 0 })
func! GetContext() abort
	return luaeval("require'nvim-gps'.is_available()") ? "> " . luaeval("require'nvim-gps'.get_location()") : ""
endf

set statusline=%F\ %h%r%{&modified?'\[+]\ ':''}%{GetContext()}%=%-5.(%l,%c%)\ %L
colors dogrun

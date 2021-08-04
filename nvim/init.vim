set encoding=UTF-8
scriptencoding utf-8
set fileencoding=utf-8
filetype indent plugin on
autocmd Filetype python setlocal ts=2 sts=2 sw=2
let mapleader = " "
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
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
set nolist
set ignorecase
set hlsearch
set clipboard=unnamedplus
set shellslash
set scrolloff=5
set mouse=a
set autoread
set showtabline=0
set hidden
set updatetime=50
set shortmess+=c
set completeopt=menuone,noinsert,noselect
set noshowcmd
set wildignore+=**/node_modules/**,*.swp,*.zip,*.exe
set laststatus=2
set number
set signcolumn=number
let g:go_highlight_trailing_whitespace_error=0
set noshowmode
" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" PLUGINS "
call plug#begin("~/.vim/plugged")
  Plug 'kien/ctrlp.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'scrooloose/nerdtree'
  Plug 'joeytwiddle/sexy_scroller.vim'
  Plug 'zivyangll/git-blame.vim'
  Plug 'ryanoasis/vim-devicons'
  " Plug 'glepnir/spaceline.vim'
  Plug 'norflin321/spaceline.vim'
  Plug 'tpope/vim-commentary'
  " Plug 'dyng/ctrlsf.vim'
  Plug 'norflin321/ctrlsf.vim'
  Plug 'sunjon/shade.nvim'
call plug#end()

syntax enable
set background=dark
set termguicolors
colors deep-space

" PLUGINS SETTINGS "
let g:NERDSpaceDelims = 1

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:15'
let g:ctrlp_working_path_mode = ''
let g:ctrlp_prompt_mappings = { 'AcceptSelection("h")': ['<c-h>'], 'AcceptSelection("v")': ['<c-v>'] }
let g:ctrlp_show_hidden = 1

let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_auto_focus = {'at': 'start'}
let g:ctrlsf_search_mode = 'async'
let g:ctrlsf_auto_close = {'compact': 1}
let g:ctrlsf_backend = 'rg'
let g:ctrlsf_ignore_dir = ['node_modules']
let g:ctrlsf_mapping = {'quit': '<Esc>', 'next': 'j', 'prev': 'k'}
let g:ctrlsf_regex_pattern = 1
let g:ctrlsf_auto_preview = 1
function! g:CtrlSFAfterMainWindowInit()
  exe ':SexyScrollerToggle'
endfunction
function! g:CtrlSFAfterMainWindowClose()
  exe ':SexyScrollerToggle'
endfunction

let g:AutoPairsMultilineClose=0

let g:NERDTreeMapActivateNode = 'o'
let g:NERDTreeMapPreview = 'p'
let g:NERDTreeMapOpenVSplit = 'v'
let g:NERDTreeMapOpenSplit = 'h'
let NERDTreeShowHidden=1
let g:NERDTreeIgnore = ['^node_modules$', '\.git$', '.DS_Store']
let g:NERDTreeStatusline=' '
let NERDTreeMinimalUI=1
let g:NERDTreeWinPos = 'left'
let NERDTreeDirArrowExpandable = "\u00a0"
let NERDTreeDirArrowCollapsible = "\u00a0"
let g:NERDTreeHighlightCursorline = 1

let g:spaceline_seperate_style = 'none'
let g:spaceline_empty_inactive = 1
let g:spaceline_colorscheme = 'nord'
let g:spaceline_diagnostic_errorsign = '✖ '
let g:spaceline_diagnostic_warnsign = '⚠ '

lua << EOF
require'shade'.setup({ overlay_opacity = 50 })
EOF

function! VeryNerdNerdTree()
  if exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1
    exe ':NERDTreeClose'
  else
    if &modifiable && strlen(expand('%')) > 0 && !&diff
      exe ':NERDTreeFind'
    else
      exe ':NERDTreeToggle'
    endif
  endif
endfunction

nmap <silent> <C-n> :call VeryNerdNerdTree()<cr>

function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction
autocmd BufRead * call SyncTree()

" MAPPING "
map q: :q
nnoremap <Space> <NOP>
nmap q <NOP>
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
nnoremap a i
nnoremap i a
nnoremap dw "_diw
nnoremap D "_D
nnoremap cw ciw
vnoremap d "_d
nnoremap A I
nnoremap I A
nnoremap yw yiw
nnoremap <S-Enter> O<Esc>
nnoremap <CR> o<Esc>
nnoremap <C-z> <Nop>
nnoremap ) 15j
vnoremap ) 15j
nnoremap ( 15k
vnoremap ( 15k
" Move to first non-blank or last non-blank character in current line
nnoremap H ^
nnoremap L g_
" keep visual selection when indenting/outdenting
vmap < <gv
vmap > >gv
" comments
vmap <silent> <C-c> gc
nmap <silent> <C-c> gcc
" ctrlsf
vmap <silent> <C-f> <Plug>CtrlSFVwordExec
nmap <C-f> <Plug>CtrlSFPrompt

" TABLINE "
function! MyTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let label = ''
  for bufnr in buflist
    if getbufvar(bufnr, "&modified")
      let label = '*'
      break
    endif
  endfor
  let winnr = tabpagewinnr(a:n)
  let name = bufname(buflist[winnr - 1])
  return fnamemodify(name, ':p:h:t') . '/' . fnamemodify(name, ':t') . label
endfunction

function! MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif
    let s .= '%' . (i + 1) . 'T'
    let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
  endfor
  let s .= '%#TabLineFill#%T'
  return s
endfunction
set tabline=%!MyTabLine()


" COC "
nmap <silent> gd :sp<CR><Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy :sp<CR><Plug>(coc-type-definition)
nmap <silent> K :call <SID>show_documentation()<CR>

inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <silent><expr> <C-a> pumvisible() ? "<C-e>" : coc#refresh()
inoremap <silent><expr> <TAB> 
  \ pumvisible() ? coc#_select_confirm() :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()

let g:coc_global_extensions = [ 'coc-tsserver', 'coc-json', 'coc-go', 'coc-prettier', 'coc-eslint' ]

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" COMMANDS "
command Eslintfix execute ":CocCommand eslint.executeAutofix"
command Blame execute ":call gitblame#echo()"
command Config execute ":vsplit $MYVIMRC"
" return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" Close nerdtree and vim on close file
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" auto so % after init.vim safe
autocmd! BufWritePost init.vim source %
" Resize splits when the window is resized
au VimResized * :wincmd =

" SNIPPETS "
" react function component
command RFC execute "r~/.config/nvim/snippets/RFC"
" react material ui styles
command RMS execute "r~/.config/nvim/snippets/RMS"
" react useState
command RS execute "r~/.config/nvim/snippets/RS"
" react useEffect
command RE execute "r~/.config/nvim/snippets/RE"
" react useCallback
command RC execute "r~/.config/nvim/snippets/RC"
" react useMemo
command RM execute "r~/.config/nvim/snippets/RM"

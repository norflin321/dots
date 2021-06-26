" SETTINGS " 
scriptencoding utf-8
filetype indent plugin on
autocmd Filetype python setlocal ts=2 sts=2 sw=2
set encoding=utf-8
let mapleader = " "
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
set clipboard=unnamedplus
set shellslash
set scrolloff=5
set mouse=a
set autoread
set showtabline=2
set hidden
set updatetime=50
set shortmess+=c
set completeopt=menuone,noinsert,noselect
set noshowcmd
set wildignore+=**/node_modules/**,*.swp,*.zip,*.exe
set laststatus=2
set guicursor=a:block
set number
set signcolumn=number
let g:go_highlight_trailing_whitespace_error=0
" set relativenumber
" set cursorline
" set list
" set listchars+=trail:·

syntax enable
set background=dark
set termguicolors
let g:gruvbox_contrast_dark = 'hard'
colors dogrun

" PLUGINS "
call plug#begin("~/.vim/plugged")
  Plug 'preservim/nerdcommenter'
  Plug 'kien/ctrlp.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'scrooloose/nerdtree'
  Plug 'joeytwiddle/sexy_scroller.vim'
call plug#end()

" PLUGINS SETTINGS "
map <C-c> <plug>NERDCommenterToggle
let g:NERDSpaceDelims = 1

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:15'
let g:ctrlp_working_path_mode = ''
let g:ctrlp_prompt_mappings = { 'AcceptSelection("h")': ['<c-i>'], 'AcceptSelection("v")': ['<c-s>'] }

let g:AutoPairsMultilineClose=0

nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '?'
let g:NERDTreeDirArrowCollapsible = '?'
let NERDTreeShowHidden=1
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeStatusline=' '
let NERDTreeMinimalUI=1
let g:NERDTreeWinPos = 'left'

let g:SexyScroller_EasingStyle = 1
let g:SexyScroller_ScrollTime = 15
let g:SexyScroller_CursorTime = 0
let g:SexyScroller_MaxTime = 320

" MAPPING "
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
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
nnoremap <S-Enter> O<Esc>
nnoremap <CR> o<Esc>
nnoremap <C-z> <Nop>
nnoremap ) 15j
vnoremap ) 15j
nnoremap ( 15k
vnoremap ( 15k
nnoremap <C-h> gT
nnoremap <C-l> gt

" STATUSLINE "
set statusline=
set statusline+=%{coc#status()}
" set statusline+=%f
set statusline+=%=
set statusline+=%c:%l
set statusline+=/   
set statusline+=%-4L

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

" let g:coc_node_path = '/usr/bin/nodejs'
let g:coc_global_extensions = [ 'coc-tsserver', 'coc-json', 'coc-go' ]

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

language en_US
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
set clipboard=unnamed
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
set wildignore+=*\\node_modules\\*,*.swp,*.zip,*.exe
" set statusline=
" set statusline+=%=
" set statusline+=%f
set laststatus=2
" set noshowmode
syntax enable
filetype indent plugin on
autocmd Filetype python setlocal ts=2 sts=2 sw=2

set number
set signcolumn=number
" set relativenumber
set cursorline

" set list
" set listchars+=trail:·

set guicursor=a:block
" set guicursor+=a:blinkon100

" PLUGINS "
call plug#begin("~/.vim/plugged")
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'preservim/nerdcommenter'
  Plug 'scrooloose/nerdtree'
  Plug 'jiangmiao/auto-pairs'
  " Plug 'inkarkat/vim-CursorLineCurrentWindow', {'brach': 'stable'}
call plug#end()

let g:AutoPairsMultilineClose=0
let g:go_highlight_trailing_whitespace_error=0

" COLORS "
set background=dark
set termguicolors
let g:gruvbox_contrast_dark = 'hard'
colors dogrun

" CTRLP "
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:15'
let g:ctrlp_working_path_mode = ''
let g:ctrlp_prompt_mappings = { 'AcceptSelection("h")': ['<c-i>'], 'AcceptSelection("v")': ['<c-s>'] }


" NERDTree & NERDCommenter "
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeStatusline=' '
let NERDTreeMinimalUI=1
let g:NERDTreeWinPos = 'left'

map <C-c> <plug>NERDCommenterToggle
let g:NERDSpaceDelims = 1

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

let g:coc_node_path = 'C:\Users\norfl\node\node'
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

" MAPPING "
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
nnoremap <S-Enter> O<Esc>
nnoremap <CR> o<Esc>
nnoremap <C-z> <Nop>
nnoremap ) 15j
vnoremap ) 15j
nnoremap ( 15k
vnoremap ( 15k
nnoremap <C-h> gT
nnoremap <C-l> gt
" nnoremap <C-h> :set hlsearch!<CR>

" CUSTOM TABLINE "
function! MyTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let label = ''
  " Add '+' if one of the buffers in the tab page is modified
  for bufnr in buflist
    if getbufvar(bufnr, "&modified")
      let label = '[+]'
      break
    endif
  endfor
  let winnr = tabpagewinnr(a:n)
  let name = bufname(buflist[winnr - 1])
  return label . fnamemodify(name, ':p:h:t') . '/' . fnamemodify(name, ':t')
endfunction

function! MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    " select the highlighting
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif
    " set the tab page number (for mouse clicks)
    let s .= '%' . (i + 1) . 'T'
    " the label is made by MyTabLabel()
    let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
  endfor
  " after the last tab fill with TabLineFill and reset tab page nr
  let s .= '%#TabLineFill#%T'
  return s
endfunction
set tabline=%!MyTabLine()

set statusline=
" set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
" set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
" set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
" set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
" set statusline+=%#Cursor#%{(mode()=='c')?'\ \ COMMAND\ ':''}
" set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
" set statusline+=%{&paste?'\ PASTE\ ':''}
" set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
" set statusline+=%R                        " readonly flag
" set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
" set statusline+=\ %t\                   " short file name
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\                   " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %3l:%-2c\         " line + column
set statusline+=%#Cursor#       " colour
" set statusline+=\ %3p%%\             " percentage

set encoding=UTF-8
scriptencoding utf-8
set fileencoding=utf-8
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
" set ruler
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
set updatetime=100
set shortmess+=c
set completeopt=menuone,noinsert,noselect
set noshowcmd
set wildignore+=**/node_modules/**,*.swp,*.zip,*.exe
set laststatus=2
set signcolumn=number
let g:go_highlight_trailing_whitespace_error=0
set noshowmode
set splitbelow
set splitright
set number
" set lazyredraw
set cursorline
" set autochdir

" PLUGINS "
call plug#begin("~/.vim/plugged")
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'scrooloose/nerdtree'
  " Plug 'joeytwiddle/sexy_scroller.vim'
  Plug 'zivyangll/git-blame.vim'
  Plug 'tpope/vim-commentary'
  Plug 'itchyny/vim-gitbranch'
  Plug 'gruvbox-community/gruvbox'
  Plug 'posva/vim-vue'
  Plug 'alvan/vim-closetag'
  Plug 'kaicataldo/material.vim', { 'branch': 'main' }
  Plug 'inkarkat/vim-CursorLineCurrentWindow'
  Plug 'glepnir/oceanic-material'
  Plug 'antoinemadec/FixCursorHold.nvim'

  " forks
  Plug 'norflin321/ctrlsf.vim'
  " icons
  Plug 'ryanoasis/vim-devicons'
call plug#end()

filetype indent plugin on
syntax enable
set background=dark
set termguicolors
let g:gruvbox_contrast_dark = 'hard'
let g:material_theme_style = 'palenight-community'
colorscheme oceanic_material
hi link markdownError Normal

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
map H ^
map L g_
" keep visual selection when indenting/outdenting
vmap < <gv
vmap > >gv
" comments
vmap <silent> <C-c> gc
nmap <silent> <C-c> gcc
" ctrlsf
vmap <silent> <C-f> <Plug>CtrlSFVwordExec
nmap <C-f> <Plug>CtrlSFPrompt
nmap <silent> <c-m> :CtrlPMRU<CR>
nnoremap J mzJ`z

" PLUGINS SETTINGS "
let g:NERDSpaceDelims = 1

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:20'
let g:ctrlp_working_path_mode = ''
let g:ctrlp_prompt_mappings = { 'AcceptSelection("h")': ['<c-h>'], 'AcceptSelection("v")': ['<c-v>'], 'AcceptSelection("e")': ['<c-o>', '<cr>'] }
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {'dir': '\android$\|\ios$\|\.git$'}

let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_auto_focus = {'at': 'start'}
let g:ctrlsf_search_mode = 'async'
let g:ctrlsf_auto_close = {'compact': 1}
let g:ctrlsf_backend = 'rg'
let g:ctrlsf_ignore_dir = ['node_modules']
let g:ctrlsf_mapping = {'quit': '<Esc>', 'next': 'j', 'prev': 'k'}
let g:ctrlsf_regex_pattern = 1
let g:ctrlsf_auto_preview = 1

" function! g:CtrlSFAfterMainWindowInit()
"   exe ':SexyScrollerToggle'
"   setlocal statusline=%=
" endfunction
" function! g:CtrlSFAfterMainWindowClose()
"   exe ':SexyScrollerToggle'
"   setlocal statusline=
" endfunction let g:SexyScroller_CursorTime = 0

let g:AutoPairsMultilineClose=0

let g:NERDTreeMapActivateNode = 'o'
let g:NERDTreeMapPreview = 'p'
let g:NERDTreeMapOpenVSplit = 'v'
let g:NERDTreeMapOpenSplit = 'h'
let NERDTreeShowHidden=1
let g:NERDTreeIgnore = ['\.git$', '.DS_Store']
let g:NERDTreeStatusline=' '
let NERDTreeMinimalUI=1
let g:NERDTreeWinPos = 'left'
let NERDTreeDirArrowExpandable = "\u00a0"
let NERDTreeDirArrowCollapsible = "\u00a0"
let g:NERDTreeHighlightCursorline = 1

let g:vim_search_pulse_mode = 'pattern'
let g:vim_search_pulse_duration = 100

let g:closetag_filenames = '*.html,*.tsx,*.jsx,*.vue'

" let g:SexyScroller_EasingStyle = 2
" let g:SexyScroller_CursorTime = 0

" in millisecond, used for both CursorHold and CursorHoldI,
" use updatetime instead if not defined
let g:cursorhold_updatetime = 100

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

" COC "
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> K :call <SID>show_documentation()<CR>

inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <silent><expr> <C-a> pumvisible() ? "<C-e>" : coc#refresh()
inoremap <silent><expr> <TAB> pumvisible() ? coc#_select_confirm() : <SID>check_back_space() ? "\<TAB>" : coc#refresh()

nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

let g:coc_global_extensions = [ 'coc-tsserver', 'coc-json', 'coc-go', 'coc-prettier', 'coc-eslint8']

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
command Config execute ":e $MYVIMRC"

augroup ReturnToLastEditedPlace
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END

augroup SourceConfigAfterWrite
  autocmd!
  autocmd BufWritePost init.vim source %
augroup END

augroup CloseNERDTreeIfLast
  autocmd!
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END

" augroup CursorLineOnlyInActiveWindow
"   autocmd!
"   autocmd WinEnter,BufWinEnter * setlocal cursorline
"   autocmd WinLeave * if &filetype != 'nerdtree' | setlocal nocursorline | endif
" augroup END

" Replace the current buffer with the given new file. That means a new file
" will be open in a buffer while the old one will be deleted
com! -nargs=1 -complete=file Breplace edit <args>| bdelete #

" STATUSLINE "
function! GetBranchName()
  let branch = gitbranch#name()
  if branch != ''
    return ' ' . branch
  endif
  return ''
endfunction

function! GetNumberOfErrors() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  if get(info, 'error', 0)
    return '[' . '✖' . info['error'] . ']'
  endif
  return ''
endfunction

function! CustomStatusLineForCtrlSf()
  let buffer_name = bufname('%')
  if buffer_name == '__CtrlSFPreview__'
    setlocal statusline=\ \ Preview
  elseif buffer_name == '__CtrlSF__'
    setlocal statusline=\ \ Results:
    setlocal statusline+=\ %{ctrlsf#utils#SectionX()}
  elseif buffer_name == '[Plugins]'
    setlocal statusline=%=
  endif
endfunction

augroup CustomStatusLine
  autocmd!
  autocmd WinEnter * call CustomStatusLineForCtrlSf()
augroup END

let g:spaceline_scroll_bar_chars =  ['█', '▇', '▆', '▅', '▄', '▃', '▂', '▁', ' ']

function! GetScrollbar() abort
  let l:current_line = line('.') - 1
  let l:total_lines = line('$') - 1
  if l:current_line == 0
    let l:index = 0
  elseif l:current_line == l:total_lines
    let l:index = -1
  else
    let l:line_no_fraction = floor(l:current_line) / floor(l:total_lines)
    let l:index = float2nr(l:line_no_fraction * len(g:spaceline_scroll_bar_chars))
  endif
  return g:spaceline_scroll_bar_chars[l:index]
endfunction

set statusline=
set statusline+=\ %{GetBranchName()}
set statusline+=\ %F " file path
set statusline+=\ %m%r " flags
set statusline+=%= " right align
" set statusline+=%#Error#
set statusline+=%{GetNumberOfErrors()}
" set statusline+=%#StatusLine#
set statusline+=\ %3l:%-2c\  " line + column
" set statusline+=%{GetScrollbar()}

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
" react native styles
command RNS execute "r~/.config/nvim/snippets/RNS"
" vue component
command VC execute "r~/.config/nvim/snippets/VC"

" NEOVIDE "
set guifont=norflin:h13
let neovide_remember_window_size = v:true

lua require('main')

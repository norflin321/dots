set encoding=UTF-8
scriptencoding utf-8
set fileencoding=utf-8
let mapleader = " "
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
" set expandtab " commend it out only for rockstone code base ^_^
set autoindent
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set showmatch
set nolist
" set lcs=tab:>-,trail:+
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
set updatetime=100
set shortmess+=c
set completeopt=menuone,noinsert,noselect
set wildignore+=**/node_modules/**,*.swp,*.zip,*.exe,**/dist/**
set laststatus=2
" set signcolumn=number
set signcolumn=yes:1
" set noshowcmd
set showmode
set splitbelow
set splitright
" set number
set fillchars+=vert:\ 
" autocmd Filetype python setlocal ts=4 sts=4 sw=4
" autocmd Filetype go setlocal ts=4 sts=4 sw=4
let g:go_highlight_trailing_whitespace_error=0
set lazyredraw
" set autochdir
set cursorline
" set guicursor=a:block-blinkwait530-blinkon530-blinkoff530
set guicursor=a:block
set noexpandtab
filetype indent plugin on
syntax enable
set background=dark
set termguicolors

" PLUGINS "
call plug#begin("~/.vim/plugged")
  Plug 'nvim-lua/plenary.nvim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-commentary'
  Plug 'itchyny/vim-gitbranch'
  Plug 'alvan/vim-closetag'
  Plug 'inkarkat/vim-CursorLineCurrentWindow'
  Plug 'antoinemadec/FixCursorHold.nvim'
  Plug 'drzel/vim-repo-edit'
  Plug 'f-person/git-blame.nvim'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'nvim-treesitter/playground'
  Plug 'dyng/ctrlsf.vim'
  Plug 'SmiteshP/nvim-gps'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'ryanoasis/vim-devicons'
  Plug 'ziglang/zig.vim'
  Plug 'kyazdani42/nvim-tree.lua'
	Plug 'stevearc/aerial.nvim'
call plug#end()

" MAPPING "
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
" nmap . <NOP>
" vmap . <NOP>
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
map z <Nop>
map zz <Nop>
map 9 $
map 8 %
vmap < <gv
vmap > >gv
vmap <silent> H :left<CR>gv
vmap <silent> L :right<CR>gv
vmap <silent> <C-c> gc
nmap <silent> <C-c> gcc
vmap <silent> <C-f> <Plug>CtrlSFVwordExec
nmap <C-f> <Plug>CtrlSFPrompt
cmap <C-f> CtrlSF
nnoremap J mzJ`z
cnoremap <c-v> <c-r>+
map <CR> <Nop>
map p ]p
map ga <Nop>
nnoremap D "_dd
nnoremap * *N
nnoremap <silent> <c-m> :CtrlPMRUFiles<CR>
nnoremap <silent> <c-n> :NvimTreeFindFileToggle<CR>
nmap <silent> <c-t> :AerialToggle<CR>

" PLUGINS SETTINGS "
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_types = ['mru', 'fil']
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
let g:ctrlsf_regex_pattern = 1
let g:ctrlsf_auto_preview = 1

let g:AutoPairsMultilineClose=0

let g:closetag_filenames = '*.html,*.tsx,*.jsx,*.vue'

let g:gitblame_enabled = 0

" in millisecond, used for both CursorHold and CursorHoldI,
" use updatetime instead if not defined
let g:cursorhold_updatetime = 100

function! CloseHiddenBuffers()
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

" close all hidden buffers
command BC execute ":call CloseHiddenBuffers()"
" log number of oppended buffers
command BN execute ":echo len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))"

" COC "
nmap <silent> K :call <SID>show_documentation()<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gn <Plug>(coc-rename)
nmap <silent> gf <Plug>(coc-fix-current)
nmap <silent> <C-d> <Plug>(coc-diagnostic-next-error)
" nmap <silent> <C-d> :call CocAction('diagnosticNext')<cr>
vmap <silent> ga <Plug>(coc-codeaction)
nmap <silent> <c-s> :CocList outline<CR>

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('editor.action.organizeImport')

let g:coc_global_extensions = [ 'coc-tsserver', 'coc-json', 'coc-go', 'coc-prettier', 'coc-css', 'coc-rust-analyzer', 'coc-pyright', 'coc-eslint8' ]

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#_select_confirm() : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
" coc#pum#insert()
inoremap <expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
inoremap <expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" COMMANDS "
command CF execute ":e $MYVIMRC"
command SF execute ":CtrlSFToggle"
command BL execute ":GitBlameToggle"
command PI execute ":PlugInstall"
command PC execute ":PlugClean"
command CC execute ":CtrlPClearAllCaches"

function! EditRepo(url)
  exe ':RepoEdit ' . a:url
endfunction
command! -nargs=1 ER call EditRepo(<f-args>)

function! Path()
  echo expand('%:F')
endfunction
command Path execute ":call Path()"

function! StatuslinePath()
  let path = expand('%:F')
  let pathSplit = split(path, '[/\\]')
  let pathSplitLength = len(pathSplit)
  if pathSplitLength == 0
    return expand('%:t')
  elseif pathSplitLength == 1
    return expand('%:t')
  elseif pathSplitLength == 2
    let lastTwo = pathSplit[-2:-1]
    return lastTwo[0] . '/' . lastTwo[1] . ' '
  elseif pathSplitLength == 3
    let lastThree = pathSplit[-3:-1]
    return lastThree[0] . '/' . lastThree[1] . '/' . lastThree[2] . ' '
  elseif pathSplitLength == 4
    let lastFour = pathSplit[-4:-1]
    return lastFour[0] . '/' . lastFour[1] . '/' . lastFour[2] . '/' . lastFour[3] . ' '
  elseif pathSplitLength > 4
    let lastFive = pathSplit[-5:-1]
    return lastFive[0] . '/' . lastFive[1] . '/' . lastFive[2] . '/' . lastFive[3] . '/' . lastFive[4] . ' '
  endif
  return ''
endfunction

augroup SourceConfigAfterWrite
  autocmd!
  autocmd BufWritePost init.vim source %
augroup END

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

" Replace the current buffer with the given new file. That means a new file
" will be open in a buffer while the old one will be deleted
com! -nargs=1 -complete=file Breplace edit <args>| bdelete #

" STATUSLINE "
function! GetBranchName()
  let branch = gitbranch#name()
  if branch != ''
    return ' ' . branch . '  '
  endif
  return ''
endfunction

function! FileName()
  let name = expand('%:t')
  if (strchars(name) == 0)
    return ''
  endif
  return expand('%:t') . '  '
endfunction

function! GetDelimeter()
  return ' '
endfunction

function! GetErrors() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  if get(info, 'error', 0)
    return 'e:' . info['error']  . ' '
  endif
  return ''
endfunction

function! GetWarnings() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  if get(info, 'warning', 0)
    return 'w:' . info['warning'] . ' '
  endif
  return ''
endfunction

function! GetInformations() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  if get(info, 'information', 0)
    return 'i:' . info['information'] . ' '
  endif
  return ''
endfunction

function! GetHints() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  if get(info, 'hint', 0)
    return 'h:' . info['hint']
  endif
  return ''
endfunction

function! GetDiagnostics() abort
  let info = GetErrors() . GetWarnings() . GetInformations() . GetHints()
  if (strchars(info) == 0)
    return ''
  endif
  return '  ' . info
endfunction

function! GetAnError() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  if get(info, 'error', 0)
    return '[e] '
  endif
  return ''
endfunction

" NEOVIDE
set guifont=NorflinJB:h11
" set guifont=NorflinCC:h11
" set guifont=NorflinSF:h11
" let g:neovide_profiler=v:true
let g:neovide_cursor_animation_length=0.02
let g:neovide_transparency=0.95
" let g:neovide_cursor_trail_length=0.01
" let g:neovide_cursor_antialiasing=v:true
let g:neovide_fullscreen=v:false
let g:neovide_remember_window_size=v:false
" let g:neovide_cursor_vfx_mode="ripple"
" let g:neovide_cursor_vfx_opacity=40
" let g:neovide_cursor_animate_in_insert_mode = v:true
set winblend=0
set pumblend=0

lua require('main')

func! NvimGps() abort
	return luaeval("require'nvim-gps'.is_available()") ?
		\ luaeval("require'nvim-gps'.get_location()") . ' ' : ''
endf

hi! link VertSplit Normal
hi! link SignColumn StatusLine

set statusline=
set statusline+=%{GetBranchName()}
set statusline+=%{StatuslinePath()} " file path
set statusline+=%{&modified?'\[*]\ ':''}
set statusline+=%= " right align
set statusline+=%{GetAnError()}
set statusline+=%{GetDelimeter()}
set statusline+=%l:%-c\  " cursor position
set statusline+=%{GetDelimeter()}
set statusline+=%L%*

" set winbar=
" set winbar+=%#StatusLine#
" set winbar+=%{NvimGps()} " context

" SNIPPETS "
command RCO execute "r~/.config/nvim/snippets/ReactComponent"
command RCMO execute "r~/.config/nvim/snippets/ReactComponentMobxObserver"
command RMS execute "r~/.config/nvim/snippets/ReactMaterialMakeStyles"
command RC execute "r~/.config/nvim/snippets/ReactUseCallback"
command RE execute "r~/.config/nvim/snippets/ReactUseEffect"
command RM execute "r~/.config/nvim/snippets/ReactUseMemo"
command RS execute "r~/.config/nvim/snippets/ReactUseState"
command RNS execute "r~/.config/nvim/snippets/ReactNativeStyleSheet"

" colors dogrun
colors dark

" USE TO SAVE TIME (at least on missing hook deps): nmap <silent> gf <Plug>(coc-fix-current)

hi! link VertSplit Normal
hi! link AerialLineNC Normal
hi! link markdownError Normal
hi! link WinBar StatusLine
hi! link WinBarNC StatusLineNC

" removed it from CocConfig only for rockstone code base
"coc.preferences.formatOnSaveFiletypes": [ javascriptreact", typescript", typescriptreact", json", css", vue", prisma", go", rust" ],

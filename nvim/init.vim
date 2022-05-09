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
set wildignore+=**/node_modules/**,*.swp,*.zip,*.exe,**/dist/**
set laststatus=2
set signcolumn=number
let g:go_highlight_trailing_whitespace_error=0
set noshowcmd
set noshowmode
set splitbelow
set splitright
set number
" set lazyredraw
" set cursorline
" set autochdir

" PLUGINS "
call plug#begin("~/.vim/plugged")
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'scrooloose/nerdtree'
  Plug 'unkiwii/vim-nerdtree-sync'
  Plug 'tpope/vim-commentary'
  Plug 'itchyny/vim-gitbranch'
  Plug 'alvan/vim-closetag'
  Plug 'inkarkat/vim-CursorLineCurrentWindow'
  Plug 'antoinemadec/FixCursorHold.nvim'
  Plug 'drzel/vim-repo-edit'
  Plug 'f-person/git-blame.nvim'
  Plug 'wakatime/vim-wakatime'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'ruifm/gitlinker.nvim'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'nvim-treesitter/playground'
  Plug 'pantharshit00/vim-prisma'

  " forks
  Plug 'norflin321/ctrlsf.vim'
  Plug 'norflin321/nvim-gps'
  " icons
  Plug 'ryanoasis/vim-devicons'
call plug#end()

filetype indent plugin on
syntax enable
set background=dark
set termguicolors
colorscheme dogrun
hi link markdownError Normal
hi Normal guibg=NONE
hi Search guibg=#343434 guifg=NONE 
hi IncSearch guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE

" MAPPING "
map q: :q
nnoremap <Space> <NOP>
nnoremap <silent> <Esc> :noh<CR>
nmap Q <NOP>
vmap Q <NOP>
nmap # <NOP>
vmap # <NOP>
nmap <c-;> <NOP>
vmap <c-;> <NOP>
nmap q <NOP>
vmap q <NOP>
nmap s <NOP>
nmap s <NOP>
nmap . <NOP>
vmap . <NOP>
nmap - <NOP>
vmap - <NOP>
nmap <c--> <NOP>
vmap <c--> <NOP>
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
nnoremap L 15l
vnoremap L 15l
nnoremap H 15h
vnoremap H 15h
map 0 ^
map $ g_
vmap < <gv
vmap > >gv
vmap <silent> <C-c> gc
nmap <silent> <C-c> gcc
vmap <silent> <C-f> <Plug>CtrlSFVwordExec
nmap <C-f> <Plug>CtrlSFPrompt
nmap <silent> <c-m> :CtrlPMRU<CR>
nnoremap J mzJ`z
cnoremap <c-v> <c-r>+

" PLUGINS SETTINGS "
let g:NERDSpaceDelims = 1

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15,results:150'
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

let g:NERDTreeMapActivateNode = 'o'
let g:NERDTreeMapPreview = 'p'
let g:NERDTreeMapOpenVSplit = 'v'
let g:NERDTreeMapOpenSplit = 'h'
let NERDTreeShowHidden=1
let g:NERDTreeIgnore = ['\.git$', '.DS_Store', '\node_modules$']
let g:NERDTreeStatusline=' '
let NERDTreeMinimalUI=1
let g:NERDTreeWinPos = 'right'
let NERDTreeDirArrowExpandable = "\u00a0"
let NERDTreeDirArrowCollapsible = "\u00a0"
let g:NERDTreeHighlightCursorline = 1
let g:nerdtree_sync_cursorline = 1

let g:closetag_filenames = '*.html,*.tsx,*.jsx,*.vue'

let g:gitblame_enabled = 0

" in millisecond, used for both CursorHold and CursorHoldI,
" use updatetime instead if not defined
let g:cursorhold_updatetime = 100

function! ToggleNerdTree()
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
nmap <silent> <C-n> :call ToggleNerdTree()<CR>

augroup CloseNERDTreeIfLast
  autocmd!
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END

" COC "
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> K :call <SID>show_documentation()<CR>
nmap <silent> gn <Plug>(coc-rename)
nmap <silent> gf <Plug>(coc-fix-current)

inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <silent><expr> <C-a> pumvisible() ? "<C-e>" : coc#refresh()
inoremap <silent><expr> <TAB> pumvisible() ? coc#_select_confirm() : <SID>check_back_space() ? "\<TAB>" : coc#refresh()

nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

let g:coc_global_extensions = [ 'coc-tsserver', 'coc-json', 'coc-go', 'coc-prettier', 'coc-eslint8', 'coc-css', 'coc-prisma']

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
command Config execute ":e $MYVIMRC"
command SF execute ":CtrlSFToggle"
command Blame execute ":GitBlameToggle"
command BlameCopy execute ":GitBlameCopySHA"

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
  elseif pathSplitLength > 1
    let lastTwo = pathSplit[-2:-1]
    return lastTwo[0] . '/' . lastTwo[1] . '  '
  endif
  return ''
endfunction

function! OpenWakaDashboard()
  let s:uri = "https://wakatime.com/dashboard"
  silent exec "!open '".s:uri."'"
endfunction
command Waka execute ":call OpenWakaDashboard()"

augroup ReturnToLastEditedPlace
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END

augroup SourceConfigAfterWrite
  autocmd!
  autocmd BufWritePost init.vim source %
augroup END

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
    return 'E:' . info['error']  . ' '
  endif
  return ''
endfunction

function! GetWarnings() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  if get(info, 'warning', 0)
    return 'W:' . info['warning'] . ' '
  endif
  return ''
endfunction

function! GetInformations() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  if get(info, 'information', 0)
    return 'I:' . info['information'] . ' '
  endif
  return ''
endfunction

function! GetHints() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  if get(info, 'hint', 0)
    return 'H:' . info['hint']
  endif
  return ''
endfunction

function! GetDiagnostics() abort
  let info = GetErrors() . GetWarnings() . GetInformations() . GetHints()
  if (strchars(info) == 0)
    return ''
  endif
  return '  ' . info . ' '
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

" NEOVIDE "
set guifont=norflin3:h12.5
let g:neovide_transparency=0.9
let g:neovide_profiler = v:false
let g:neovide_cursor_animation_length=0.02

" todo:
" [x] disable ligatures
" [x] increase font lineheight
" [x] setup internal terminal
" [x] change search hi to some sort of white/gray
" [.] push new settings to github

lua << EOF
require"gitlinker".setup({
  mappings = nil,
  print_url = false,
  callbacks = {
    ["gitlab.magic-egg.net"] = require"gitlinker.hosts".get_gitlab_type_url
  }
})
vim.api.nvim_set_keymap('n', 'gl', '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".copy_to_clipboard})<cr>', {silent = true})
vim.api.nvim_set_keymap('v', 'gl', '<cmd>lua require"gitlinker".get_buf_range_url("v", {action_callback = require"gitlinker.actions".copy_to_clipboard})<cr>', {silent = true})
require("nvim-gps").setup({depth = 0})
require "nvim-treesitter.configs".setup {
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  }
}
EOF

func! NvimGps() abort
	return luaeval("require'nvim-gps'.is_available()") ?
		\ luaeval("require'nvim-gps'.get_location()") . ' ' : ''
endf

set statusline=
set statusline+=%{GetBranchName()}
set statusline+=%{&modified?'*':''}
set statusline+=%{StatuslinePath()} " file path
set statusline+=%{NvimGps()} " context
set statusline+=%= " right align
set statusline+=%{GetDiagnostics()}
set statusline+=%{GetDelimeter()}
set statusline+=%3l:%-2c\  " cursor position

" SNIPPETS "
command ReactComponent execute "r~/.config/nvim/snippets/ReactComponent"
command ReactComponentMobxObserver execute "r~/.config/nvim/snippets/ReactComponentMobxObserver"
command ReactMaterialMakeStyles execute "r~/.config/nvim/snippets/ReactMaterialMakeStyles"
command ReactUseCallback execute "r~/.config/nvim/snippets/ReactUseCallback"
command ReactUseEffect execute "r~/.config/nvim/snippets/ReactUseEffect"
command ReactUseMemo execute "r~/.config/nvim/snippets/ReactUseMemo"
command ReactUseState execute "r~/.config/nvim/snippets/ReactUseState"

command ReactNativeStyleSheet execute "r~/.config/nvim/snippets/ReactNativeStyleSheet"
command ReactNativePlatformCondition execute "r~/.config/nvim/snippets/ReactNativePlatformCondition"
command ReactNativeNavigateFromRoot execute "r~/.config/nvim/snippets/ReactNativeNavigateFromRoot"
command ReactNativeNavigationAddListener execute "r~/.config/nvim/snippets/ReactNativeNavigationAddListener"

command Function execute "r~/.config/nvim/snippets/Function"
command FunctionAsync execute "r~/.config/nvim/snippets/FunctionAsync"
command SetTimeout execute "r~/.config/nvim/snippets/SetTimeout"
command Require execute "r~/.config/nvim/snippets/Require"
command ReactNativeTouchableOpacity execute "r~/.config/nvim/snippets/ReactNativeTouchableOpacity"
command Translations execute "r~/.config/nvim/snippets/Translations"

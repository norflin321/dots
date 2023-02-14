scriptencoding utf-8

hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name="dark"

" Highlighting Function
fun! <sid>hi(group, fg, bg, attr)
	if !empty(a:fg)
		exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" .  a:fg.cterm256
	endif
	if !empty(a:bg)
		exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" .  a:bg.cterm256
	endif
	if a:attr != ""
		exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
	endif
endfun

" Color Variables
let s:black2 = {'gui': '#121212', 'cterm256': '233'}
let s:black3 = {'gui': '#1c1c1c', 'cterm256': '234'}
let s:black4 = {'gui': '#262626', 'cterm256': '235'}
let s:gray1 = {'gui': '#3E3D32', 'cterm256': '237'}
let s:gray2 = {'gui': '#49483E', 'cterm256': '239'}
let s:gray3 = {'gui': '#767676', 'cterm256': '243'}
let s:gray4 = {'gui': '#949494', 'cterm256': '246'}
let s:gray6 = {'gui': '#C6C6C6', 'cterm256': '251'}
let s:white1 = {'gui': '#bfbfbf', 'cterm256': '252'}
let s:green1 = {'gui': '#008700', 'cterm256': '28'}
let s:gold1 = {'gui': '#8E700B', 'cterm256': '136'}
let s:red = {'gui': '#f19d7e', 'cterm256': '160'}
let s:none = {'gui': 'NONE', 'cterm256': 'NONE'}

" Editor  Definitions
" call <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)
call <sid>hi('ColorColumn', s:none, s:gray2, 'none')
call <sid>hi('Cursor', s:black2, s:white1, 'none')
call <sid>hi('CursorColumn', s:none, s:black3, 'none')
call <sid>hi('CursorLine', s:none, s:black4, 'none')
call <sid>hi('CursorLineNr', s:white1, s:gray1, 'none')
call <sid>hi('Directory', s:white1, s:black2, 'none')
call <sid>hi('FoldColumn', s:gray6, s:black2, 'none')
call <sid>hi('Folded', s:gray4, s:none, 'none')
call <sid>hi('IncSearch', s:black2, s:gold1, 'none')
call <sid>hi('LineNr', s:gray4, s:black4, 'none')
call <sid>hi('MatchParen', s:white1, s:gray3, 'none')
call <sid>hi('Normal', s:white1, s:black2, 'none')
call <sid>hi('Pmenu', s:none, s:black4, 'none')
call <sid>hi('PmenuSel', s:none, s:gray2, 'none')
call <sid>hi('Search', s:black2, s:gold1, 'none')
call <sid>hi('SignColumn', s:none, s:black3, 'none')
call <sid>hi('StatusLine', s:white1, s:black3, 'none')
call <sid>hi('StatusLineNC', s:none, s:black3, 'none')
call <sid>hi('VertSplit', s:black2, s:gray3, 'none')
call <sid>hi('Visual', s:none, s:gray2, 'none')

" General Definitions
" call <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)
call <sid>hi('Boolean', s:white1, s:none, 'none')
call <sid>hi('Character', s:white1, s:none, 'none')
call <sid>hi('Comment', s:gray3, s:none, 'none')
call <sid>hi('Conditional', s:white1, s:none, 'none')
call <sid>hi('Constant', s:white1, s:none, 'none')
call <sid>hi('Define', s:white1, s:none, 'none')
call <sid>hi('ErrorMsg', s:red, s:black2, 'none')
call <sid>hi('Float', s:white1, s:none, 'none')
call <sid>hi('Function', s:white1, s:none, 'none')
call <sid>hi('Identifier', s:white1, s:none, 'none')
call <sid>hi('Keyword', s:white1, s:none, 'none')
call <sid>hi('Label', s:white1, s:none, 'none')
call <sid>hi('NonText', s:gray3, s:none, 'none')
call <sid>hi('Number', s:white1, s:none, 'none')
call <sid>hi('Operator', s:white1, s:none, 'none')
call <sid>hi('PreProc', s:white1, s:none, 'none')
call <sid>hi('Special', s:white1, s:none, 'none')
call <sid>hi('SpecialKey', s:white1, s:none, 'none')
call <sid>hi('SpellBad', s:red, s:none, 'italic,undercurl')
call <sid>hi('SpellCap', s:white1, s:none, 'italic,undercurl')
call <sid>hi('SpellLocal', s:white1, s:none, 'undercurl')
call <sid>hi('Statement', s:white1, s:none, 'none')
call <sid>hi('StorageClass', s:white1, s:none, 'none')
call <sid>hi('String', s:white1, s:none, 'none')
call <sid>hi('Tag', s:white1, s:none, 'none')
call <sid>hi('Title', s:none, s:none, 'bold')
call <sid>hi('Todo', s:gray3, s:none, 'inverse,bold')
call <sid>hi('Type', s:none, s:none, 'none')
call <sid>hi('Underlined', s:none, s:none, 'underline')
call <sid>hi('WarningMsg', s:black2, s:gold1, 'none')

" CocError
hi CocErrorSign guifg=#f19d7e ctermfg=NONE gui=bold cterm=bold guibg=#1c1c1c
hi CocErrorFloat guifg=#f19d7e
hi CocErrorHighlight guisp=#f19d7e gui=underline

" CocWarning
hi CocWarningSign guifg=NONE ctermfg=NONE gui=bold cterm=bold guibg=NONE
hi CocWarningHighlight guisp=fg gui=underline

" CocInfo
hi CocInfoSign guifg=NONE ctermfg=NONE gui=bold cterm=bold guibg=NONE
hi CocInfoHighlight guisp=fg gui=underline

" CocHint
hi CocHintSign guifg=NONE ctermfg=NONE gui=bold cterm=bold guibg=NONE
hi CocHintHighlight guisp=fg gui=underline

hi CocFadeOut guisp=fg gui=underline

hi! link VertSplit Normal
hi! link AerialLineNC Normal
hi! link markdownError Normal

hi Normal guibg=NONE guifg=fg gui=NONE
hi CursorLine guibg=#161616 guifg=NONE gui=NONE

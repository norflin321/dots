scriptencoding utf-8

hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name="mies"

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
let s:chicagoBlack1 = {'gui': '#080808', 'cterm256': '232'}
let s:chicagoBlack2 = {'gui': '#121212', 'cterm256': '233'}
let s:chicagoBlack3 = {'gui': '#1c1c1c', 'cterm256': '234'}
let s:chicagoBlack4 = {'gui': '#262626', 'cterm256': '235'}
let s:chicagoGray1 = {'gui': '#3E3D32', 'cterm256': '237'}
let s:chicagoGray2 = {'gui': '#49483E', 'cterm256': '239'}
let s:chicagoGray3 = {'gui': '#767676', 'cterm256': '243'}
let s:chicagoGray4 = {'gui': '#949494', 'cterm256': '246'}
let s:chicagoGray5 = {'gui': '#B0B0B0', 'cterm256': '249'}
let s:chicagoGray6 = {'gui': '#C6C6C6', 'cterm256': '251'}
let s:chicagoWhite1 = {'gui': '#bfbfbf', 'cterm256': '252'}
let s:chicagoWhite2 = {'gui': '#FFFFFF', 'cterm256': '231'}
let s:chicagoBlue = {'gui': '#5F8787', 'cterm256': '66'}
let s:chicagoGreen1 = {'gui': '#008700', 'cterm256': '28'}
let s:chicagoGreen2 = {'gui': '#00af5f', 'cterm256': '35'}
let s:chicagoGold1 = {'gui': '#8E700B', 'cterm256': '136'}
let s:chicagoGold2 = {'gui': '#D7AF00', 'cterm256': '178'}
let s:chicagoBrown = {'gui': '#5F5F00', 'cterm256': '58'}
let s:chicagoRed = {'gui': '#f19d7e', 'cterm256': '160'}
let s:none = {'gui': 'NONE', 'cterm256': 'NONE'}

" Editor  Definitions
" call <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)
call <sid>hi('ColorColumn', s:none, s:chicagoGray2, 'none')
call <sid>hi('Cursor', s:chicagoBlack2, s:chicagoWhite1, 'none')
call <sid>hi('CursorColumn', s:none, s:chicagoBlack3, 'none')
call <sid>hi('CursorLine', s:none, s:chicagoBlack2, 'none')
call <sid>hi('CursorLineNr', s:chicagoWhite1, s:chicagoGray1, 'none')
call <sid>hi('Directory', s:chicagoWhite1, s:chicagoBlack2, 'none')
call <sid>hi('FoldColumn', s:chicagoGray6, s:chicagoBlack2, 'none')
call <sid>hi('Folded', s:chicagoGray4, s:none, 'none')
call <sid>hi('IncSearch', s:chicagoBlack2, s:chicagoGold1, 'none')
call <sid>hi('LineNr', s:chicagoGray4, s:chicagoBlack4, 'none')
call <sid>hi('MatchParen', s:chicagoWhite1, s:chicagoGray3, 'none')
call <sid>hi('Normal', s:chicagoWhite1, s:chicagoBlack2, 'none')
call <sid>hi('Pmenu', s:none, s:chicagoBlack4, 'none')
call <sid>hi('PmenuSel', s:none, s:chicagoGray2, 'none')
call <sid>hi('Search', s:chicagoBlack2, s:chicagoGold1, 'none')
call <sid>hi('SignColumn', s:none, s:chicagoBlack3, 'none')
call <sid>hi('StatusLine', s:chicagoWhite1, s:chicagoBlack3, 'none')
call <sid>hi('StatusLineNC', s:none, s:chicagoBlack3, 'none')
call <sid>hi('VertSplit', s:chicagoBlack2, s:chicagoGray3, 'none')
call <sid>hi('Visual', s:none, s:chicagoGray2, 'none')

" General Definitions
" call <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)
call <sid>hi('Boolean', s:chicagoWhite1, s:none, 'none')
call <sid>hi('Character', s:chicagoWhite1, s:none, 'none')
call <sid>hi('Comment', s:chicagoGray3, s:none, 'none')
call <sid>hi('Conditional', s:chicagoWhite1, s:none, 'none')
call <sid>hi('Constant', s:chicagoWhite1, s:none, 'none')
call <sid>hi('Define', s:chicagoWhite1, s:none, 'none')
call <sid>hi('DiffAdd', s:chicagoBlack2, s:chicagoGreen2, 'none')
call <sid>hi('DiffChange', s:chicagoBlack2, s:chicagoGold1, 'none')
call <sid>hi('DiffDelete', s:chicagoWhite1, s:chicagoRed, 'none')
call <sid>hi('DiffText', s:chicagoBlack2, s:chicagoBlue, 'none')
call <sid>hi('ErrorMsg', s:chicagoRed, s:chicagoBlack2, 'none')
call <sid>hi('Float', s:chicagoWhite1, s:none, 'none')
call <sid>hi('Function', s:chicagoWhite1, s:none, 'none')
call <sid>hi('Identifier', s:chicagoWhite1, s:none, 'none')
call <sid>hi('Keyword', s:chicagoWhite1, s:none, 'none')
call <sid>hi('Label', s:chicagoWhite1, s:none, 'none')
call <sid>hi('NonText', s:chicagoGray3, s:none, 'none')
call <sid>hi('Number', s:chicagoWhite1, s:none, 'none')
call <sid>hi('Operator', s:chicagoWhite1, s:none, 'none')
call <sid>hi('PreProc', s:chicagoWhite1, s:none, 'none')
call <sid>hi('Special', s:chicagoWhite1, s:none, 'none')
call <sid>hi('SpecialKey', s:chicagoWhite1, s:none, 'none')
call <sid>hi('SpellBad', s:chicagoRed, s:none, 'italic,undercurl')
call <sid>hi('SpellCap', s:chicagoWhite1, s:none, 'italic,undercurl')
call <sid>hi('SpellLocal', s:chicagoWhite1, s:none, 'undercurl')
call <sid>hi('Statement', s:chicagoWhite1, s:none, 'none')
call <sid>hi('StorageClass', s:chicagoWhite1, s:none, 'none')
call <sid>hi('String', s:chicagoWhite1, s:none, 'none')
call <sid>hi('Tag', s:chicagoWhite1, s:none, 'none')
call <sid>hi('Title', s:none, s:none, 'bold')
call <sid>hi('Todo', s:chicagoGray3, s:none, 'inverse,bold')
call <sid>hi('Type', s:none, s:none, 'none')
call <sid>hi('Underlined', s:none, s:none, 'underline')
call <sid>hi('WarningMsg', s:chicagoBlack2, s:chicagoGold1, 'none')

" Plugins Definitions
" call <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)
call <sid>hi('BufTabLineActive', s:chicagoWhite1, s:chicagoGray2, 'none')
call <sid>hi('BufTabLineCurrent', s:chicagoBlack2, s:chicagoGray5, 'none')
call <sid>hi('BufTabLineFill', s:chicagoBlack2, s:chicagoBlack2, 'none')
call <sid>hi('BufTabLineHidden', s:chicagoGray3, s:chicagoBlack4, 'none')

" CocError
hi CocErrorSign guifg=#f19d7e ctermfg=NONE gui=bold cterm=bold guibg=#1c1c1c
hi CocErrorFloat guifg=#f19d7e
hi CocErrorHighlight guisp=#f19d7e gui=underline

hi CocWarningSign guifg=NONE ctermfg=NONE gui=bold cterm=bold guibg=NONE
hi CocWarningHighlight guisp=fg gui=underline

hi CocInfoSign guifg=NONE ctermfg=NONE gui=bold cterm=bold guibg=NONE
hi CocInfoHighlight guisp=fg gui=underline

hi CocHintSign guifg=NONE ctermfg=NONE gui=bold cterm=bold guibg=NONE
hi CocHintHighlight guisp=fg gui=underline

hi CocFadeOut guisp=fg gui=underline

hi! link VertSplit Normal
hi! link AerialLineNC Normal
hi! link markdownError Normal

hi Normal guibg=NONE guifg=fg gui=NONE

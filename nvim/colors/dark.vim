highlight clear
set background=dark
if version > 580
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name = "dark"

hi NonText cterm=NONE ctermfg=black ctermbg=black gui=NONE guifg=#303030 guibg=#0a0a0a
hi Normal cterm=NONE ctermfg=250 ctermbg=black gui=NONE guifg=#bcbcbc guibg=#0a0a0a
hi Keyword cterm=NONE ctermfg=255 ctermbg=black gui=NONE guifg=#eeeeee guibg=#0a0a0a
hi Constant cterm=NONE ctermfg=252 ctermbg=black gui=NONE guifg=#d0d0d0 guibg=#0a0a0a
hi String cterm=NONE ctermfg=245 ctermbg=black gui=NONE guifg=#8a8a8a guibg=#0a0a0a
hi Comment cterm=NONE ctermfg=240 ctermbg=black gui=NONE guifg=#585858 guibg=#0a0a0a
hi Number cterm=NONE ctermfg=255 ctermbg=black gui=NONE guifg=#eeeeee guibg=#0a0a0a
hi Error cterm=NONE ctermfg=255 ctermbg=DarkGray gui=NONE guifg=#eeeeee guibg=#0a0a0a
hi ErrorMsg cterm=NONE ctermfg=255 ctermbg=DarkGray gui=NONE guifg=#eeeeee guibg=#0a0a0a
hi Search cterm=reverse ctermfg=255 ctermbg=245 gui=reverse guifg=#eeeeee guibg=#0a0a0a
hi IncSearch cterm=reverse ctermfg=255 ctermbg=245 gui=reverse guifg=#eeeeee guibg=#0a0a0a
hi DiffChange cterm=NONE ctermfg=240 ctermbg=255 gui=NONE guifg=#8a8a8a guibg=#0a0a0a
hi DiffText cterm=bold ctermfg=255 ctermbg=DarkGray gui=bold guifg=#bcbcbc guibg=#0a0a0a
hi SignColumn cterm=NONE ctermfg=240 ctermbg=black gui=NONE guifg=#8a8a8a guibg=#303030
hi SpellBad cterm=undercurl ctermfg=255 ctermbg=245 gui=undercurl guifg=#eeeeee guibg=#0a0a0a
hi SpellCap cterm=NONE ctermfg=255 ctermbg=124 gui=NONE guifg=#eeeeee guibg=#0a0a0a
hi SpellRare cterm=NONE ctermfg=240 ctermbg=16 gui=NONE guifg=#8a8a8a guibg=#0a0a0a
hi WildMenu cterm=NONE ctermfg=240 ctermbg=255 gui=NONE guifg=#585858 guibg=#0a0a0a
hi Pmenu cterm=NONE ctermfg=255 ctermbg=240 gui=NONE guifg=#eeeeee guibg=#0a0a0a
hi PmenuThumb cterm=NONE ctermfg=232 ctermbg=240 gui=NONE guifg=#080808 guibg=#0a0a0a
hi SpecialKey cterm=NONE ctermfg=16 ctermbg=255 gui=NONE guifg=#eeeeee guibg=#0a0a0a
hi MatchParen cterm=NONE ctermfg=white ctermbg=black gui=NONE guifg=#eeeeee guibg=#0a0a0a
hi CursorLine cterm=NONE ctermfg=NONE ctermbg=233 gui=NONE guifg=NONE guibg=#303030
hi StatusLine cterm=bold,reverse ctermfg=245 ctermbg=black gui=bold,reverse guifg=#303030 guibg=#0a0a0a
hi StatusLineNC cterm=reverse ctermfg=236 ctermbg=black gui=reverse guifg=#303030 guibg=#0a0a0a
hi Visual cterm=reverse ctermfg=250 ctermbg=black gui=reverse guifg=#bcbcbc guibg=#0a0a0a
hi VertSplit cterm=NONE ctermfg=Gray ctermbg=black gui=NONE guifg=NONE guibg=NONE
hi TermCursor cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE
hi ColorColumn  cterm=reverse ctermfg=NONE ctermbg=NONE gui=reverse guifg=NONE guibg=NONE

highlight! link Boolean Normal
highlight! link Delimiter Normal
highlight! link Identifier Normal
highlight! link Title Normal
highlight! link Debug Normal
highlight! link Exception Normal
highlight! link FoldColumn Normal
highlight! link Macro Normal
highlight! link ModeMsg Normal
highlight! link MoreMsg Normal
highlight! link Question Normal
highlight! link Conditional Keyword
highlight! link Statement Keyword
highlight! link Operator Keyword
highlight! link Structure Keyword
highlight! link Function Keyword
highlight! link Include Keyword
highlight! link Type Keyword
highlight! link Typedef Keyword
highlight! link Todo Keyword
highlight! link Label Keyword
highlight! link Define Keyword
highlight! link DiffAdd Keyword
highlight! link diffAdded Keyword
highlight! link diffCommon Keyword
highlight! link Directory Keyword
highlight! link PreCondit Keyword
highlight! link PreProc Keyword
highlight! link Repeat Keyword
highlight! link Special Keyword
highlight! link SpecialChar Keyword
highlight! link StorageClass Keyword
highlight! link SpecialComment String
highlight! link CursorLineNr String
highlight! link Character Number
highlight! link Float Number
highlight! link Tag Number
highlight! link Folded Number
highlight! link WarningMsg Number
highlight! link iCursor SpecialKey
highlight! link SpellLocal SpellCap
highlight! link LineNr Comment
highlight! link NonText NonText 
highlight! link DiffDelete Comment
highlight! link diffRemoved Comment
highlight! link PmenuSbar Visual
highlight! link PmenuSel Visual
highlight! link VisualNOS Visual
highlight! link VertSplit VertSplit
highlight! link Cursor StatusLine
highlight! link Underlined SpellRare
highlight! link rstEmphasis SpellRare
highlight! link diffChanged DiffChange
highlight! CocUnusedHighlight ctermbg=NONE guibg=NONE

hi CursorLine guibg=#303030 ctermbg=236 gui=NONE cterm=NONE
hi CursorLineNr guifg=#303030 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#303030 ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

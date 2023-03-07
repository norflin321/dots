-- it converts "hex" color to "hsl", then changes "l" which represents
-- lightness, then converts it back to "hex" color
local function changeLightness(hex, light)
	local r = tonumber(string.sub(hex, 2, 3), 16) / 255
	local g = tonumber(string.sub(hex, 4, 5), 16) / 255
	local b = tonumber(string.sub(hex, 6, 7), 16) / 255
	local min = math.min(r, g, b)
	local max = math.max(r, g, b)
	local h = 0
	local s = 0
	local l = (max + min) / 2
	if max ~= min then
		local d = max - min
		if l > 0.5 then s = d / (2 - max - min) else s = d / (max + min) end
		if max == r then
			local t = 0
			if g < b then t = 6 end
			h = (g - b) / d + t
		elseif max == g then
			h = (b - r) / d + 2
		elseif max == b then
			h = (r - g) / d + 4
		end
		h = h / 6
	end
	h = math.floor((h * 360) + 0.5)
	s = math.floor((s * 100) + 0.5)
	l = math.floor(((l * 100) + light) + 0.5)
	if l > 100 then l = 100 end
	l = l / 100
	local a = s * math.min(l, 1 - l) / 100
	local function f(n)
		local k = (n + h / 30) % 12
		local color = l - a * math.max(math.min(k - 3, 9 - k, 1), -1)
		local hex = string.format("%x", math.floor((255 * color) + 0.5))
		if hex:len() < 2 then
			hex = "0" .. hex
		end
		return hex
	end
	return "#" .. f(0) .. f(8) .. f(4)
end

-- palettes
local palette = { "#18122B", "#393053" } -- "purpelin"
-- local palette = { "#222831", "#393E46" } -- "feeling peace"
-- local palette = { "#311D3F", "#88304E" } -- "fire in the forest"
-- local palette = { "#000000", "#282A3A" } -- "dark toronto"
-- local palette = { "#040303", "#461111" } -- "bloody wolves fight"
-- local palette = { "#171717", "#444444" } -- "green fiesta"
-- local palette = { "#363062", "#4D4C7D" } -- "heaven"
-- local palette = { "#112031", "#152D35" } -- "chillout"
-- local palette = { "#282828", "#3c3836" } -- "goovybox"

-- colors
local bg = palette[1] -- background
local border = palette[2] -- statusline, tabline, signcolumn

local bg1 = changeLightness(border, -3) -- cursorline
local bg4 = changeLightness(border, 5) -- visual
local bg3 = changeLightness(border, 30) -- search

local bg2 = "#36323b" -- float/menu bg
local white = "#bab5ab" -- most of foreground
local grey = "#767676" -- comments
local err = "#f19d7e" -- errors

local groups = {
	white = { fg = white },
	grey = { fg = grey },
	Normal = { fg = white, bg = bg },
	NormalNC = { link = "Normal" },
	CursorLine = { bg = bg1 },
	CursorColumn = { link = "CursorLine" },
	TabLineFill = { fg = white, bg = border },
	TabLineSel = { fg = white, bg = border },
	TabLine = { fg = white, bg = border },
	MatchParen = { bg = "#4d4d4d", underline = false, bold = false },
	ColorColumn = { bg = bg1 },
	Conceal = { fg = white },
	CursorLineNr = { fg = white, bg = bg1 },
	NonText = { fg = bg2 },
	SpecialKey = { link = "white" },
	Visual = { bg = bg4, reverse = false },
	VisualNOS = { link = "Visual" },
	Search = { bg = bg3, fg = bg },
	IncSearch = { link = "Search" },
	CurSearch = { link = "Search" },
	QuickFixLine = { fg = bg, bg = white, bold = false },
	Underlined = { fg = white, underline = true },
	StatusLine = { fg = "#B0B0B0", bg = border },
	StatusLineNC = { fg = "#949494", bg = border },
	WinBar = { fg = white, bg = bg },
	WinBarNC = { fg = white, bg = bg1 },
	VertSplit = { link = Normal },
	AerialLineNC = { link = Normal },
	markdownError = { link = Normal },
	WildMenu = { fg = white, bg = bg2, bold = false },
	Directory = { link = "white" },
	ErrorMsg = { fg = err, bg = "none", bold = false },
	MoreMsg = { link = "white" },
	ModeMsg = { link = "white" },
	Question = { link = "white" },
	WarningMsg = { link = "white" },
	LineNr = { fg = white },
	SignColumn = { link = "StatusLine" },
	Folded = { fg = grey, bg = bg1, italic = false },
	FoldColumn = { fg = grey, bg = bg1 },
	Cursor = { reverse = false },
	vCursor = { link = "Cursor" },
	iCursor = { link = "Cursor" },
	lCursor = { link = "Cursor" },
	Special = { link = "white" },
	Comment = { fg = grey, italic = false },
	Todo = { fg = white, bold = false, italic = false },
	Done = { fg = white, bold = false, italic = false },
	Error = { fg = err, bold = false, reverse = false },
	Statement = { link = "white" },
	Conditional = { link = "white" },
	Repeat = { link = "white" },
	Label = { link = "white" },
	Exception = { link = "white" },
	Operator = { fg = white, italic = false },
	Keyword = { link = "white" },
	Identifier = { link = "white" },
	Function = { link = "white" },
	PreProc = { link = "white" },
	Include = { link = "white" },
	Define = { link = "white" },
	Macro = { link = "white" },
	PreCondit = { link = "white" },
	Constant = { link = "white" },
	Character = { link = "white" },
	String = { fg = white, italic = false },
	Boolean = { link = "white" },
	Number = { link = "white" },
	Float = { link = "white" },
	Type = { link = "white" },
	StorageClass = { link = "white" },
	Structure = { link = "white" },
	Typedef = { link = "white" },
	Pmenu = { bg = bg2 },
	PmenuSel = { bg = bg1, bold = false },
	PmenuSbar = { bg = bg1 },
	PmenuThumb = { bg = white },
	DiffDelete = { fg = white, bg = bg, reverse = false },
	DiffAdd = { fg = white, bg = bg, reverse = false },
	DiffChange = { fg = white, bg = bg, reverse = false },
	DiffText = { fg = white, bg = bg, reverse = false },
	SpellCap = { undercurl = true, sp = white },
	SpellBad = { undercurl = true, sp = white },
	SpellLocal = { undercurl = true, sp = white },
	SpellRare = { undercurl = true, sp = white },
	Whitespace = { fg = bg2 },
	
	-- nvim-treesitter (0.8 compat)
	["@annotation"] = { link = "Operator" },
	["@comment"] = { link = "Comment" },
	["@none"] = { bg = "NONE", fg = "NONE" },
	["@preproc"] = { link = "PreProc" },
	["@define"] = { link = "Define" },
	["@operator"] = { link = "Operator" },
	["@punctuation.delimiter"] = { link = "Delimiter" },
	["@punctuation.bracket"] = { link = "Delimiter" },
	["@punctuation.special"] = { link = "Delimiter" },
	["@string"] = { link = "String" },
	["@string.regex"] = { link = "String" },
	["@string.escape"] = { link = "SpecialChar" },
	["@string.special"] = { link = "SpecialChar" },
	["@character"] = { link = "Character" },
	["@character.special"] = { link = "SpecialChar" },
	["@boolean"] = { link = "Boolean" },
	["@number"] = { link = "Number" },
	["@float"] = { link = "Float" },
	["@function"] = { link = "Function" },
	["@function.call"] = { link = "Function" },
	["@function.builtin"] = { link = "Special" },
	["@function.macro"] = { link = "Macro" },
	["@method"] = { link = "Function" },
	["@method.call"] = { link = "Function" },
	["@constructor"] = { link = "Special" },
	["@parameter"] = { link = "Identifier" },
	["@keyword"] = { link = "Keyword" },
	["@keyword.function"] = { link = "Keyword" },
	["@keyword.return"] = { link = "Keyword" },
	["@conditional"] = { link = "Conditional" },
	["@repeat"] = { link = "Repeat" },
	["@debug"] = { link = "Debug" },
	["@label"] = { link = "Label" },
	["@include"] = { link = "Include" },
	["@exception"] = { link = "Exception" },
	["@type"] = { link = "Type" },
	["@type.builtin"] = { link = "Type" },
	["@type.qualifier"] = { link = "Type" },
	["@type.definition"] = { link = "Typedef" },
	["@storageclass"] = { link = "StorageClass" },
	["@attribute"] = { link = "PreProc" },
	["@field"] = { link = "Identifier" },
	["@property"] = { link = "Identifier" },
	["@variable"] = { link = "white" },
	["@variable.builtin"] = { link = "Special" },
	["@constant"] = { link = "Constant" },
	["@constant.builtin"] = { link = "Special" },
	["@constant.macro"] = { link = "Define" },
	["@namespace"] = { link = "white" },
	["@symbol"] = { link = "Identifier" },
	["@text"] = { link = "white" },
	["@text.title"] = { link = "Title" },
	["@text.literal"] = { link = "String" },
	["@text.uri"] = { link = "Underlined" },
	["@text.math"] = { link = "Special" },
	["@text.environment"] = { link = "Macro" },
	["@text.environment.name"] = { link = "Type" },
	["@text.reference"] = { link = "Constant" },
	["@text.todo"] = { link = "Todo" },
	["@text.todo.unchecked"] = { link = "Todo" },
	["@text.todo.checked"] = { link = "Done" },
	["@text.note"] = { link = "SpecialComment" },
	["@text.warning"] = { link = "WarningMsg" },
	["@text.danger"] = { link = "ErrorMsg" },
	["@text.diff.add"] = { link = "diffAdded" },
	["@text.diff.delete"] = { link = "diffRemoved" },
	["@tag"] = { link = "Tag" },
	["@tag.attribute"] = { link = "Identifier" },
	["@tag.delimiter"] = { link = "Delimiter" },

	-- nvim-treesitter (0.8 overrides)
	["@text.strong"] = { bold = false },
	["@text.strike"] = { strikethrough = true },
	["@text.emphasis"] = { italic = false },
	["@text.underline"] = { underline = true },
	["@keyword.operator"] = { link = "white" },

	-- nvim-tree
	NvimTreeSymlink = { fg = white },
	NvimTreeRootFolder = { fg = white, bold = true },
	NvimTreeFolderIcon = { fg = white, bold = true },
	NvimTreeFileIcon = { fg = light2 },
	NvimTreeExecFile = { fg = white, bold = true },
	NvimTreeOpenedFile = { fg = bright_red, bold = true },
	NvimTreeSpecialFile = { fg = white, bold = true, underline = true },
	NvimTreeImageFile = { fg = white },
	NvimTreeIndentMarker = { fg = dark3 },
	NvimTreeGitDirty = { fg = white },
	NvimTreeGitStaged = { fg = white },
	NvimTreeGitMerge = { fg = white },
	NvimTreeGitRenamed = { fg = white },
	NvimTreeGitNew = { fg = white },
	NvimTreeGitDeleted = { fg = white },
	NvimTreeWindowPicker = { bg = faded_aqua },

	-- coc.nvim
	CocErrorSign = { fg = err, bg = bg },
	CocWarningSign = { fg = white, bg = bg1, reverse = false },
	CocInfoSign = { fg = white, bg = bg1, reverse = false },
	CocHintSign = { fg = white, bg = bg1, reverse = false },
	CocErrorFloat = { fg = err, bg = "#252526" },
	CocWarningFloat = { link = "white" },
	CocInfoFloat = { link = "white" },
	CocHintFloat = { link = "white" },
	CocDiagnosticsError = { link = "white" },
	CocDiagnosticsWarning = { link = "white" },
	CocDiagnosticsInfo = { link = "white" },
	CocDiagnosticsHint = { link = "white" },
	CocSelectedText = { link = "white" },
	CocMenuSel = { link = "PmenuSel" },
	CocCodeLens = { link = "grey" },
	CocErrorHighlight = { undercurl = true, sp = err },
	CocWarningHighlight = { undercurl = true, sp = white },
	CocInfoHighlight = { undercurl = true, sp = white },
	CocHintHighlight = { undercurl = true, sp = white },
	CocHighlightText = { bg = "#3b3b3b" },

	-- html
	htmlTag = { link = "white" },
	htmlEndTag = { link = "white" },
	htmlTagName = { link = "white" },
	htmlArg = { link = "white" },
	htmlTagN = { link = "white" },
	htmlSpecialTagName = { link = "white" },
	htmlLink = { fg = white, underline = true },
	htmlSpecialChar = { link = "white" },
	htmlBold = { fg = white, bg = bg, bold = false },
	htmlBoldUnderline = { fg = white, bg = bg, bold = false, underline = true },
	htmlBoldItalic = { fg = white, bg = bg, bold = false, italic = false },
	htmlBoldUnderlineItalic = {
		fg = white,
		bg = bg,
		bold = false,
		italic = false,
		underline = true,
	},
	htmlUnderline = { fg = white, bg = bg, underline = true },
	htmlUnderlineItalic = {
		fg = white,
		bg = bg,
		italic = false,
		underline = true,
	},
	htmlItalic = { fg = white, bg = bg, bold = false },

	-- xml
	xmlTag = { link = "white" },
	xmlEndTag = { link = "white" },
	xmlTagName = { link = "white" },
	xmlEqual = { link = "white" },
	docbkKeyword = { link = "white" },
	xmlDocTypeDecl = { link = "grey" },
	xmlDocTypeKeyword = { link = "white" },
	xmlCdataStart = { link = "grey" },
	xmlCdataCdata = { link = "white" },
	dtdFunction = { link = "grey" },
	dtdTagName = { link = "white" },
	xmlAttrib = { link = "white" },
	xmlProcessingDelim = { link = "grey" },
	dtdParamEntityPunct = { link = "grey" },
	dtdParamEntityDPunct = { link = "grey" },
	xmlAttribPunct = { link = "grey" },
	xmlEntity = { link = "white" },
	xmlEntityPunct = { link = "white" },

	-- C
	cOperator = { link = "white" },
	cppOperator = { link = "white" },
	cStructure = { link = "white" },

	-- python
	pythonBuiltin = { link = "white" },
	pythonBuiltinObj = { link = "white" },
	pythonBuiltinFunc = { link = "white" },
	pythonFunction = { link = "white" },
	pythonDecorator = { link = "white" },
	pythonInclude = { link = "white" },
	pythonImport = { link = "white" },
	pythonRun = { link = "white" },
	pythonCoding = { link = "white" },
	pythonOperator = { link = "white" },
	pythonException = { link = "white" },
	pythonExceptions = { link = "white" },
	pythonBoolean = { link = "white" },
	pythonDot = { link = "white" },
	pythonConditional = { link = "white" },
	pythonRepeat = { link = "white" },
	pythonDottedName = { link = "white" },

	-- CSS
	cssBraces = { link = "white" },
	cssFunctionName = { link = "white" },
	cssIdentifier = { link = "white" },
	cssClassName = { link = "white" },
	cssColor = { link = "white" },
	cssSelectorOp = { link = "white" },
	cssSelectorOp2 = { link = "white" },
	cssImportant = { link = "white" },
	cssVendor = { link = "white" },
	cssTextProp = { link = "white" },
	cssAnimationProp = { link = "white" },
	cssUIProp = { link = "white" },
	cssTransformProp = { link = "white" },
	cssTransitionProp = { link = "white" },
	cssPrintProp = { link = "white" },
	cssPositioningProp = { link = "white" },
	cssBoxProp = { link = "white" },
	cssFontDescriptorProp = { link = "white" },
	cssFlexibleBoxProp = { link = "white" },
	cssBorderOutlineProp = { link = "white" },
	cssBackgroundProp = { link = "white" },
	cssMarginProp = { link = "white" },
	cssListProp = { link = "white" },
	cssTableProp = { link = "white" },
	cssFontProp = { link = "white" },
	cssPaddingProp = { link = "white" },
	cssDimensionProp = { link = "white" },
	cssRenderProp = { link = "white" },
	cssColorProp = { link = "white" },
	cssGeneratedContentProp = { link = "white" },

	-- javascript
	javaScriptBraces = { link = "white" },
	javaScriptFunction = { link = "white" },
	javaScriptIdentifier = { link = "white" },
	javaScriptMember = { link = "white" },
	javaScriptNumber = { link = "white" },
	javaScriptNull = { link = "white" },
	javaScriptParens = { link = "white" },

	-- typescript
	typescriptReserved = { link = "white" },
	typescriptLabel = { link = "white" },
	typescriptFuncKeyword = { link = "white" },
	typescriptIdentifier = { link = "white" },
	typescriptBraces = { link = "white" },
	typescriptEndColons = { link = "white" },
	typescriptDOMObjects = { link = "white" },
	typescriptAjaxMethods = { link = "white" },
	typescriptLogicSymbols = { link = "white" },
	typescriptDocSeeTag = { link = "Comment" },
	typescriptDocParam = { link = "Comment" },
	typescriptDocTags = { link = "vimCommentTitle" },
	typescriptGlobalObjects = { link = "white" },
	typescriptParens = { link = "white" },
	typescriptOpSymbols = { link = "white" },
	typescriptHtmlElemProperties = { link = "white" },
	typescriptNull = { link = "white" },
	typescriptInterpolationDelimiter = { link = "white" },

	-- objc
	objcTypeModifier = { link = "white" },
	objcDirective = { link = "white" },

	-- go
	goDirective = { link = "white" },
	goConstants = { link = "white" },
	goDeclaration = { link = "white" },
	goDeclType = { link = "white" },
	goBuiltins = { link = "white" },

	-- lua
	luaIn = { link = "white" },
	luaFunction = { link = "white" },
	luaTable = { link = "white" },

	-- markdown
	markdownItalic = { fg = white, italic = false },
	markdownBold = { fg = white, bold = false },
	markdownBoldItalic = { fg = white, bold = false, italic = false },
	markdownH1 = { link = "white" },
	markdownH2 = { link = "white" },
	markdownH3 = { link = "white" },
	markdownH4 = { link = "white" },
	markdownH5 = { link = "white" },
	markdownH6 = { link = "white" },
	markdownCode = { link = "white" },
	markdownCodeBlock = { link = "white" },
	markdownCodeDelimiter = { link = "white" },
	markdownBlockquote = { link = "grey" },
	markdownListMarker = { link = "grey" },
	markdownOrderedListMarker = { link = "grey" },
	markdownRule = { link = "grey" },
	markdownHeadingRule = { link = "grey" },
	markdownUrlDelimiter = { link = "white" },
	markdownLinkDelimiter = { link = "white" },
	markdownLinkTextDelimiter = { link = "white" },
	markdownHeadingDelimiter = { link = "white" },
	markdownUrl = { link = "white" },
	markdownUrlTitleDelimiter = { link = "white" },
	markdownLinkText = { fg = grey, underline = true },
	markdownIdDeclaration = { link = "markdownLinkText" },

	-- json
	jsonKeyword = { link = "white" },
	jsonQuote = { link = "white" },
	jsonBraces = { link = "white" },
	jsonString = { link = "white" },

	-- rust btw
	rustSigil = { link = "white" },
	rustEscape = { link = "white" },
	rustStringContinuation = { link = "white" },
	rustEnum = { link = "white" },
	rustStructure = { link = "white" },
	rustModPathSep = { link = "white" },
	rustCommentLineDoc = { link = "Comment" },
	rustDefault = { link = "white" },
}

-- nvim terminal
vim.g.terminal_color_0 = bg
vim.g.terminal_color_1 = white
vim.g.terminal_color_2 = white
vim.g.terminal_color_3 = white
vim.g.terminal_color_4 = white
vim.g.terminal_color_5 = white
vim.g.terminal_color_6 = white
vim.g.terminal_color_7 = white
vim.g.terminal_color_8 = grey
vim.g.terminal_color_9 = white
vim.g.terminal_color_10 = white
vim.g.terminal_color_11 = white
vim.g.terminal_color_12 = white
vim.g.terminal_color_13 = white
vim.g.terminal_color_14 = white
vim.g.terminal_color_15 = white

-- set colors
if vim.g.name then
	vim.cmd("hi clear")
end
vim.g.name = "bipalettes"
vim.o.termguicolors = true
for group, settings in pairs(groups) do
	vim.api.nvim_set_hl(0, group, settings)
end

local config = {
	undercurl = true,
	underline = true,
	bold = false,
	italic = false,
}

local colors = {
	bg0 = "#1f1f1f", -- background
	bg1 = "#292929", -- cursorline
	bg2 = "#36323b", -- float/menu bg (normalized)
	grey = "#767676", -- comments
	white = "#c1bcb3", -- most of foreground
	err = "#f19d7e" -- errors
}

local groups = {
	white = { fg = colors.white },
	grey = { fg = colors.grey },
	Normal = { fg = colors.white, bg = colors.bg0 },
	NormalNC = { link = "Normal" },
	CursorLine = { bg = colors.bg1 },
	CursorColumn = { link = "CursorLine" },
	TabLineFill = { fg = colors.white, bg = colors.bg1, reverse = false },
	TabLineSel = { fg = colors.white, bg = colors.bg1, reverse = false },
	TabLine = { link = "TabLineFill" },
	MatchParen = { bg = "#4d4d4d", underline = false, bold = config.bold },
	ColorColumn = { bg = colors.bg1 },
	Conceal = { fg = colors.white },
	CursorLineNr = { fg = colors.white, bg = colors.bg1 },
	NonText = { fg = colors.bg2 },
	SpecialKey = { link = "white" },
	Visual = { bg = colors.bg2, reverse = false },
	VisualNOS = { link = "Visual" },
	Search = { bg = "#8E700B", fg = colors.bg0 },
	IncSearch = { link = "Search" },
	CurSearch = { link = "Search" },
	QuickFixLine = { fg = colors.bg0, bg = colors.white, bold = config.bold },
	Underlined = { fg = colors.white, underline = config.underline },
	StatusLine = { fg = "#B0B0B0", bg = "#353536" },
	StatusLineNC = { fg = "#949494", bg = "#353536" },
	WinBar = { fg = colors.white, bg = colors.bg0 },
	WinBarNC = { fg = colors.white, bg = colors.bg1 },
	VertSplit = { fg = colors.bg0, bg = colors.bg0 },
	WildMenu = { fg = colors.white, bg = colors.bg2, bold = config.bold },
	Directory = { link = "white" },
	Title = { link = "white" },
	ErrorMsg = { fg = colors.err, bg = "none", bold = config.bold },
	MoreMsg = { link = "white" },
	ModeMsg = { link = "white" },
	Question = { link = "white" },
	WarningMsg = { link = "white" },
	LineNr = { fg = colors.white },
	SignColumn = { link = "StatusLine" },
	Folded = { fg = colors.grey, bg = colors.bg1, italic = config.italic },
	FoldColumn = { fg = colors.grey, bg = colors.bg1 },
	Cursor = { reverse = false },
	vCursor = { link = "Cursor" },
	iCursor = { link = "Cursor" },
	lCursor = { link = "Cursor" },
	Special = { link = "white" },
	Comment = { fg = colors.grey, italic = config.italic },
	Todo = { fg = colors.white, bold = config.bold, italic = config.italic },
	Done = { fg = colors.white, bold = config.bold, italic = config.italic },
	Error = { fg = colors.err, bold = config.bold, reverse = false },
	Statement = { link = "white" },
	Conditional = { link = "white" },
	Repeat = { link = "white" },
	Label = { link = "white" },
	Exception = { link = "white" },
	Operator = { fg = colors.white, italic = config.italic },
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
	String = { fg = colors.white, italic = config.italic },
	Boolean = { link = "white" },
	Number = { link = "white" },
	Float = { link = "white" },
	Type = { link = "white" },
	StorageClass = { link = "white" },
	Structure = { link = "white" },
	Typedef = { link = "white" },
	Pmenu = { bg = colors.bg2 },
	PmenuSel = { bg = colors.bg1, bold = config.bold },
	PmenuSbar = { bg = colors.bg1 },
	PmenuThumb = { bg = colors.white },
	DiffDelete = { fg = colors.white, bg = colors.bg0, reverse = false },
	DiffAdd = { fg = colors.white, bg = colors.bg0, reverse = false },
	DiffChange = { fg = colors.white, bg = colors.bg0, reverse = false },
	DiffText = { fg = colors.white, bg = colors.bg0, reverse = false },
	SpellCap = { undercurl = true, sp = colors.white },
	SpellBad = { undercurl = true, sp = colors.white },
	SpellLocal = { undercurl = true, sp = colors.white },
	SpellRare = { undercurl = true, sp = colors.white },
	Whitespace = { fg = colors.bg2 },
	
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
	["@text.strong"] = { bold = config.bold },
	["@text.strike"] = { strikethrough = true },
	["@text.emphasis"] = { italic = config.italic },
	["@text.underline"] = { underline = config.underline },
	["@keyword.operator"] = { link = "white" },

	-- nvim-tree
	NvimTreeSymlink = { fg = colors.white },
	NvimTreeRootFolder = { fg = colors.white, bold = true },
	NvimTreeFolderIcon = { fg = colors.white, bold = true },
	NvimTreeFileIcon = { fg = colors.light2 },
	NvimTreeExecFile = { fg = colors.white, bold = true },
	NvimTreeOpenedFile = { fg = colors.bright_red, bold = true },
	NvimTreeSpecialFile = { fg = colors.white, bold = true, underline = true },
	NvimTreeImageFile = { fg = colors.white },
	NvimTreeIndentMarker = { fg = colors.dark3 },
	NvimTreeGitDirty = { fg = colors.white },
	NvimTreeGitStaged = { fg = colors.white },
	NvimTreeGitMerge = { fg = colors.white },
	NvimTreeGitRenamed = { fg = colors.white },
	NvimTreeGitNew = { fg = colors.white },
	NvimTreeGitDeleted = { fg = colors.white },
	NvimTreeWindowPicker = { bg = colors.faded_aqua },

	-- coc.nvim
	CocErrorSign = { fg = colors.err, bg = colors.bg0 },
	CocWarningSign = { fg = colors.white, bg = colors.bg1, reverse = false },
	CocInfoSign = { fg = colors.white, bg = colors.bg1, reverse = false },
	CocHintSign = { fg = colors.white, bg = colors.bg1, reverse = false },
	CocErrorFloat = { fg = colors.err, bg = "#252526" },
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
	CocErrorHighlight = { undercurl = true, sp = colors.err },
	CocWarningHighlight = { undercurl = true, sp = colors.white },
	CocInfoHighlight = { undercurl = true, sp = colors.white },
	CocHintHighlight = { undercurl = true, sp = colors.white },

	-- html
	htmlTag = { link = "white" },
	htmlEndTag = { link = "white" },
	htmlTagName = { link = "white" },
	htmlArg = { link = "white" },
	htmlTagN = { link = "white" },
	htmlSpecialTagName = { link = "white" },
	htmlLink = { fg = colors.white, underline = config.underline },
	htmlSpecialChar = { link = "white" },
	htmlBold = { fg = colors.white, bg = colors.bg0, bold = config.bold },
	htmlBoldUnderline = { fg = colors.white, bg = colors.bg0, bold = config.bold, underline = config.underline },
	htmlBoldItalic = { fg = colors.white, bg = colors.bg0, bold = config.bold, italic = config.italic },
	htmlBoldUnderlineItalic = {
		fg = colors.white,
		bg = colors.bg0,
		bold = config.bold,
		italic = config.italic,
		underline = config.underline,
	},
	htmlUnderline = { fg = colors.white, bg = colors.bg0, underline = config.underline },
	htmlUnderlineItalic = {
		fg = colors.white,
		bg = colors.bg0,
		italic = config.italic,
		underline = config.underline,
	},
	htmlItalic = { fg = colors.white, bg = colors.bg0, bold = config.italic },

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
	markdownItalic = { fg = colors.white, italic = config.italic },
	markdownBold = { fg = colors.white, bold = config.bold },
	markdownBoldItalic = { fg = colors.white, bold = config.bold, italic = config.italic },
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
	markdownLinkText = { fg = colors.grey, underline = config.underline },
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
vim.g.terminal_color_0 = colors.bg0
vim.g.terminal_color_1 = colors.white
vim.g.terminal_color_2 = colors.white
vim.g.terminal_color_3 = colors.white
vim.g.terminal_color_4 = colors.white
vim.g.terminal_color_5 = colors.white
vim.g.terminal_color_6 = colors.white
vim.g.terminal_color_7 = colors.white
vim.g.terminal_color_8 = colors.grey
vim.g.terminal_color_9 = colors.white
vim.g.terminal_color_10 = colors.white
vim.g.terminal_color_11 = colors.white
vim.g.terminal_color_12 = colors.white
vim.g.terminal_color_13 = colors.white
vim.g.terminal_color_14 = colors.white
vim.g.terminal_color_15 = colors.white

-- set colors
if vim.g.colors_name then
	vim.cmd("hi clear")
end
vim.g.colors_name = "stan"
vim.o.termguicolors = true
for group, settings in pairs(groups) do
	vim.api.nvim_set_hl(0, group, settings)
end

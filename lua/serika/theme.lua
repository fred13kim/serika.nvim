local serika = require("serika.colors")

local theme = {}

local italic = vim.g.serika_italic == false and serika.none or "italic"
local italic_undercurl = vim.g.serika_italic == false and "undercurl" or "italic,undercurl"
local bold = vim.g.serika_bold == false and serika.none or "bold"
local reverse_bold = vim.g.serika_bold == false and "reverse" or "reverse,bold"
local bold_underline = vim.g.serika_bold == false and "underline" or "bold,underline"
local bold_italic;
if vim.g.serika_bold == false then
	bold_italic = vim.g.serika_italic == false and serika.none or "italic"
elseif vim.g.serika_italic == false then
	bold_italic = "bold"
else
	bold_italic = "bold,italic"
end

theme.loadSyntax = function()
	-- Syntax highlight groups
	return {
		Type = { fg = serika.serika9_gui }, -- int, long, char, etc.
		StorageClass = { fg = serika.serika9_gui }, -- static, register, volatile, etc.
		Structure = { fg = serika.serika9_gui }, -- struct, union, enum, etc.
		Constant = { fg = serika.serika4_gui }, -- any constant
		Character = { fg = serika.serika14_gui }, -- any character constant: 'c', '\n'
		Number = { fg = serika.serika15_gui }, -- a number constant: 5
		Boolean = { fg = serika.serika9_gui }, -- a boolean constant: TRUE, false
		Float = { fg = serika.serika15_gui }, -- a floating point constant: 2.3e10
		Statement = { fg = serika.serika9_gui }, -- any statement
		Label = { fg = serika.serika9_gui }, -- case, default, etc.
		Operator = { fg = serika.serika9_gui }, -- sizeof", "+", "*", etc.
		Exception = { fg = serika.serika9_gui }, -- try, catch, throw
		PreProc = { fg = serika.serika9_gui }, -- generic Preprocessor
		Include = { fg = serika.serika9_gui }, -- preprocessor #include
		Define = { fg = serika.serika9_gui }, -- preprocessor #define
		Macro = { fg = serika.serika9_gui }, -- same as Define
		Typedef = { fg = serika.serika9_gui }, -- A typedef
		PreCondit = { fg = serika.serika13_gui }, -- preprocessor #if, #else, #endif, etc.
		Special = { fg = serika.serika4_gui }, -- any special symbol
		SpecialChar = { fg = serika.serika13_gui }, -- special character in a constant
		Tag = { fg = serika.serika4_gui }, -- you can use CTRL-] on this
		Delimiter = { fg = serika.serika6_gui }, -- character that needs attention like , or .
		SpecialComment = { fg = serika.serika8_gui }, -- special things inside a comment
		Debug = { fg = serika.serika11_gui }, -- debugging statements
		Underlined = { fg = serika.serika14_gui, bg = serika.none, style = "underline" }, -- text that stands out, HTML links
		Ignore = { fg = serika.serika1_gui }, -- left blank, hidden
		Todo = { fg = serika.serika13_gui, bg = serika.none, style = bold_italic }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Conceal = { fg = serika.none, bg = serika.serika0_gui },
		htmlLink = { fg = serika.serika14_gui, style = "underline" },
		markdownH1Delimiter = { fg = serika.serika8_gui },
		markdownH2Delimiter = { fg = serika.serika11_gui },
		markdownH3Delimiter = { fg = serika.serika14_gui },
		htmlH1 = { fg = serika.serika8_gui, style = bold },
		htmlH2 = { fg = serika.serika11_gui, style = bold },
		htmlH3 = { fg = serika.serika14_gui, style = bold },
		htmlH4 = { fg = serika.serika15_gui, style = bold },
		htmlH5 = { fg = serika.serika9_gui, style = bold },
		markdownH1 = { fg = serika.serika8_gui, style = bold },
		markdownH2 = { fg = serika.serika11_gui, style = bold },
		markdownH3 = { fg = serika.serika14_gui, style = bold },
		Error = { fg = serika.serika11_gui, bg = serika.none, style = bold_underline }, -- any erroneous construct with bold
		Comment = { fg = serika.serika3_gui_bright, style = italic }, -- italic comments
		Conditional = { fg = serika.serika9_gui, style = italic }, -- italic if, then, else, endif, switch, etc.
		Function = { fg = serika.serika8_gui, style = italic }, -- italic funtion names
		Identifier = { fg = serika.serika9_gui, style = italic }, -- any variable name
		Keyword = { fg = serika.serika9_gui, style = italic }, -- italic for, do, while, etc.
		Repeat = { fg = serika.serika9_gui, style = italic }, -- italic any other keyword
		String = { fg = serika.serika14_gui, style = italic }, -- any string
	}
end

theme.loadEditor = function()
	-- Editor highlight groups

	local editor = {
		NormalFloat = { fg = serika.serika4_gui, bg = serika.float }, -- normal text and background color
		FloatBorder = { fg = serika.serika4_gui, bg = serika.float }, -- normal text and background color
		ColorColumn = { fg = serika.none, bg = serika.serika1_gui }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = serika.serika1_gui }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = serika.serika4_gui, bg = serika.none, style = "reverse" }, -- the character under the cursor
		CursorIM = { fg = serika.serika5_gui, bg = serika.none, style = "reverse" }, -- like Cursor, but used when in IME mode
		Directory = { fg = serika.serika7_gui, bg = serika.none }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = serika.serika1_gui },
		ErrorMsg = { fg = serika.none },
		Folded = { fg = serika.serika3_gui_bright, bg = serika.none, style = italic },
		FoldColumn = { fg = serika.serika7_gui },
		IncSearch = { fg = serika.serika0_gui, bg = serika.serika4_gui },
		LineNr = { fg = serika.serika3_gui_bright },
		CursorLineNr = { fg = serika.serika4_gui },
		MatchParen = { fg = serika.serika15_gui, bg = serika.none, style = bold },
		ModeMsg = { fg = serika.serika4_gui },
		MoreMsg = { fg = serika.serika4_gui },
		NonText = { fg = serika.serika1_gui },
		Pmenu = { fg = serika.serika4_gui, bg = serika.serika2_gui },
		PmenuSel = { fg = serika.serika0_gui, bg = serika.serika3_gui },
		PmenuSbar = { fg = serika.serika4_gui, bg = serika.serika2_gui },
		PmenuThumb = { fg = serika.serika4_gui, bg = serika.serika4_gui },
		Question = { fg = serika.serika14_gui },
		QuickFixLine = { fg = serika.serika4_gui, bg = serika.none, style = "reverse" },
		qfLineNr = { fg = serika.serika4_gui, bg = serika.none, style = "reverse" },
		Search = { fg = serika.serika0_gui, bg = serika.serika4_gui },
		Substitute = { fg = serika.serika0_gui, bg = serika.serika12_gui },
		SpecialKey = { fg = serika.serika9_gui },
		SpellBad = { fg = serika.serika11_gui, bg = serika.none, style = italic_undercurl },
		SpellCap = { fg = serika.serika7_gui, bg = serika.none, style = italic_undercurl },
		SpellLocal = { fg = serika.serika8_gui, bg = serika.none, style = italic_undercurl },
		SpellRare = { fg = serika.serika9_gui, bg = serika.none, style = italic_undercurl },
		StatusLine = { fg = serika.serika4_gui, bg = serika.serika2_gui },
		StatusLineNC = { fg = serika.serika4_gui, bg = serika.serika1_gui },
		StatusLineTerm = { fg = serika.serika4_gui, bg = serika.serika2_gui },
		StatusLineTermNC = { fg = serika.serika4_gui, bg = serika.serika1_gui },
		TabLineFill = { fg = serika.serika4_gui, bg = serika.none },
		TablineSel = { fg = serika.serika1_gui, bg = serika.serika9_gui },
		Tabline = { fg = serika.serika4_gui, bg = serika.serika1_gui },
		Title = { fg = serika.serika14_gui, bg = serika.none, style = bold },
		Visual = { fg = serika.none, bg = serika.serika2_gui },
		VisualNOS = { fg = serika.none, bg = serika.serika2_gui },
		WarningMsg = { fg = serika.serika15_gui },
		WildMenu = { fg = serika.serika12_gui, bg = serika.none, style = bold },
		CursorColumn = { fg = serika.none, bg = serika.cursorlinefg },
		CursorLine = { fg = serika.none, bg = serika.cursorlinefg },
		ToolbarLine = { fg = serika.serika4_gui, bg = serika.serika1_gui },
		ToolbarButton = { fg = serika.serika4_gui, bg = serika.none, style = bold },
		NormalMode = { fg = serika.serika4_gui, bg = serika.none, style = "reverse" },
		InsertMode = { fg = serika.serika14_gui, bg = serika.none, style = "reverse" },
		ReplacelMode = { fg = serika.serika11_gui, bg = serika.none, style = "reverse" },
		VisualMode = { fg = serika.serika9_gui, bg = serika.none, style = "reverse" },
		CommandMode = { fg = serika.serika4_gui, bg = serika.none, style = "reverse" },
		Warnings = { fg = serika.serika15_gui },

		healthError = { fg = serika.serika11_gui },
		healthSuccess = { fg = serika.serika14_gui },
		healthWarning = { fg = serika.serika15_gui },

		-- dashboard
		DashboardShortCut = { fg = serika.serika7_gui },
		DashboardHeader = { fg = serika.serika9_gui },
		DashboardCenter = { fg = serika.serika8_gui },
		DashboardFooter = { fg = serika.serika14_gui, style = italic },

		-- Barbar
		BufferTabpageFill = { bg = serika.serika0_gui },

		BufferCurrent = { bg = serika.serika1_gui },
		BufferCurrentMod = { bg = serika.serika1_gui, fg = serika.serika15_gui },
		BufferCurrentIcon = { bg = serika.serika1_gui },
		BufferCurrentSign = { bg = serika.serika1_gui },
		BufferCurrentIndex = { bg = serika.serika1_gui },
		BufferCurrentTarget = { bg = serika.serika1_gui, fg = serika.serika11_gui },

		BufferInactive = { bg = serika.serika0_gui, fg = serika.serika3_gui },
		BufferInactiveMod = { bg = serika.serika0_gui, fg = serika.serika15_gui },
		BufferInactiveIcon = { bg = serika.serika0_gui, fg = serika.serika3_gui },
		BufferInactiveSign = { bg = serika.serika0_gui, fg = serika.serika3_gui },
		BufferInactiveIndex = { bg = serika.serika0_gui, fg = serika.serika3_gui },
		BufferInactiveTarget = { bg = serika.serika0_gui, fg = serika.serika11_gui },

		BufferVisible = { bg = serika.serika2_gui },
		BufferVisibleMod = { bg = serika.serika2_gui, fg = serika.serika15_gui },
		BufferVisibleIcon = { bg = serika.serika2_gui },
		BufferVisibleSign = { bg = serika.serika2_gui },
		BufferVisibleIndex = { bg = serika.serika2_gui },
		BufferVisibleTarget = { bg = serika.serika2_gui, fg = serika.serika11_gui },

		-- nvim-notify
		NotifyDEBUGBorder = { fg = serika.serika3_gui },
		NotifyDEBUGIcon = { fg = serika.serika3_gui },
		NotifyDEBUGTitle = { fg = serika.serika3_gui },
		NotifyERRORBorder = { fg = serika.serika11_gui },
		NotifyERRORIcon = { fg = serika.serika11_gui },
		NotifyERRORTitle = { fg = serika.serika11_gui },
		NotifyINFOBorder = { fg = serika.serika14_gui },
		NotifyINFOIcon = { fg = serika.serika14_gui },
		NotifyINFOTitle = { fg = serika.serika14_gui },
		NotifyTRACEBorder = { fg = serika.serika15_gui },
		NotifyTRACEIcon = { fg = serika.serika15_gui },
		NotifyTRACETitle = { fg = serika.serika15_gui },
		NotifyWARNBorder = { fg = serika.serika13_gui },
		NotifyWARNIcon = { fg = serika.serika13_gui },
		NotifyWARNTitle = { fg = serika.serika13_gui },

		-- leap.nvim
		LeapMatch = { style = "underline,nocombine", fg = serika.serika13_gui },
		LeapLabelPrimary = { style = "nocombine", fg = serika.serika0_gui, bg = serika.serika13_gui },
		LeapLabelSecondary = { style = "nocombine", fg = serika.serika0_gui, bg = serika.serika15_gui },
	}

	-- Options:

	--Set transparent background
	if vim.g.serika_disable_background then
		editor.Normal = { fg = serika.serika4_gui, bg = serika.none } -- normal text and background color
		editor.SignColumn = { fg = serika.serika4_gui, bg = serika.none }
	else
		editor.Normal = { fg = serika.serika4_gui, bg = serika.serika0_gui } -- normal text and background color
		editor.SignColumn = { fg = serika.serika4_gui, bg = serika.serika0_gui }
	end

	-- Remove window split borders
	if vim.g.serika_borders then
		editor.VertSplit = { fg = serika.serika2_gui }
	else
		editor.VertSplit = { fg = serika.serika0_gui }
	end

	if vim.g.serika_uniform_diff_background then
		editor.DiffAdd = { fg = serika.serika14_gui, bg = serika.serika1_gui } -- diff mode: Added line
		editor.DiffChange = { fg = serika.serika13_gui, bg = serika.serika1_gui } -- diff mode: Changed line
		editor.DiffDelete = { fg = serika.serika11_gui, bg = serika.serika1_gui } -- diff mode: Deleted line
		editor.DiffText = { fg = serika.serika15_gui, bg = serika.serika1_gui } -- diff mode: Changed text within a changed line
	else
		editor.DiffAdd = { fg = serika.serika14_gui, bg = serika.none, style = "reverse" } -- diff mode: Added line
		editor.DiffChange = { fg = serika.serika13_gui, bg = serika.none, style = "reverse" } -- diff mode: Changed line
		editor.DiffDelete = { fg = serika.serika11_gui, bg = serika.none, style = "reverse" } -- diff mode: Deleted line
		editor.DiffText = { fg = serika.serika15_gui, bg = serika.none, style = "reverse" } -- diff mode: Changed text within a changed line
	end

	return editor
end

theme.loadTerminal = function()
	vim.g.terminal_color_0 = serika.serika1_gui
	vim.g.terminal_color_1 = serika.serika11_gui
	vim.g.terminal_color_2 = serika.serika14_gui
	vim.g.terminal_color_3 = serika.serika13_gui
	vim.g.terminal_color_4 = serika.serika9_gui
	vim.g.terminal_color_5 = serika.serika15_gui
	vim.g.terminal_color_6 = serika.serika8_gui
	vim.g.terminal_color_7 = serika.serika5_gui
	vim.g.terminal_color_8 = serika.serika3_gui
	vim.g.terminal_color_9 = serika.serika11_gui
	vim.g.terminal_color_10 = serika.serika14_gui
	vim.g.terminal_color_11 = serika.serika13_gui
	vim.g.terminal_color_12 = serika.serika9_gui
	vim.g.terminal_color_13 = serika.serika15_gui
	vim.g.terminal_color_14 = serika.serika7_gui
	vim.g.terminal_color_15 = serika.serika6_gui
end

theme.loadTreeSitter = function()
	-- TreeSitter highlight groups

	local treesitter = {
		TSConstructor = { fg = serika.serika9_gui }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConstant = { fg = serika.serika13_gui }, -- For constants
		TSFloat = { fg = serika.serika15_gui }, -- For floats
		TSNumber = { fg = serika.serika15_gui }, -- For all number
		TSAttribute = { fg = serika.serika15_gui }, -- (unstable) TODO: docs
		TSError = { fg = serika.serika11_gui }, -- For syntax/parser errors.
		TSException = { fg = serika.serika15_gui }, -- For exception related keywords.
		TSFuncMacro = { fg = serika.serika7_gui }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude = { fg = serika.serika9_gui }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSLabel = { fg = serika.serika15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
		TSOperator = { fg = serika.serika9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter = { fg = serika.serika10_gui }, -- For parameters of a function.
		TSParameterReference = { fg = serika.serika10_gui }, -- For references to parameters of a function.
		TSPunctDelimiter = { fg = serika.serika8_gui }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = serika.serika8_gui }, -- For brackets and parens.
		TSPunctSpecial = { fg = serika.serika8_gui }, -- For special punctutation that does not fall in the catagories before.
		TSSymbol = { fg = serika.serika15_gui }, -- For identifiers referring to symbols or atoms.
		TSType = { fg = serika.serika9_gui }, -- For types.
		TSTypeBuiltin = { fg = serika.serika9_gui }, -- For builtin types.
		TSTag = { fg = serika.serika4_gui }, -- Tags like html tag names.
		TSTagDelimiter = { fg = serika.serika15_gui }, -- Tag delimiter like `<` `>` `/`
		TSText = { fg = serika.serika4_gui }, -- For strings consideserika11_gui text in a markup language.
		TSTextReference = { fg = serika.serika15_gui }, -- FIXME
		TSEmphasis = { fg = serika.serika10_gui }, -- For text to be represented with emphasis.
		TSUnderline = { fg = serika.serika4_gui, bg = serika.none, style = "underline" }, -- For text to be represented with an underline.
		TSLiteral = { fg = serika.serika4_gui }, -- Literal text.
		TSURI = { fg = serika.serika14_gui }, -- Any URI like a link or email.
		TSAnnotation = { fg = serika.serika11_gui }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		["@constructor"] = { fg = serika.serika9_gui },
		["@constant"] = { fg = serika.serika13_gui },
		["@float"] = { fg = serika.serika15_gui },
		["@number"] = { fg = serika.serika15_gui },
		["@attribute"] = { fg = serika.serika15_gui },
		["@error"] = { fg = serika.serika11_gui },
		["@exception"] = { fg = serika.serika15_gui },
		["@funtion.macro"] = { fg = serika.serika7_gui },
		["@include"] = { fg = serika.serika9_gui },
		["@label"] = { fg = serika.serika15_gui },
		["@operator"] = { fg = serika.serika9_gui },
		["@parameter"] = { fg = serika.serika10_gui },
		["@punctuation.delimiter"] = { fg = serika.serika8_gui },
		["@punctuation.bracket"] = { fg = serika.serika8_gui },
		["@punctuation.special"] = { fg = serika.serika8_gui },
		["@symbol"] = { fg = serika.serika15_gui },
		["@type"] = { fg = serika.serika9_gui },
		["@type.builtin"] = { fg = serika.serika9_gui },
		["@tag"] = { fg = serika.serika4_gui },
		["@tag.delimiter"] = { fg = serika.serika15_gui },
		["@text"] = { fg = serika.serika4_gui },
		["@text.reference"] = { fg = serika.serika15_gui },
		["@text.emphasis"] = { fg = serika.serika10_gui },
		["@text.underline"] = { fg = serika.serika4_gui, bg = serika.none, style = "underline" },
		["@text.literal"] = { fg = serika.serika4_gui },
		["@text.uri"] = { fg = serika.serika14_gui },
		["@text.strike"] = { fg = serika.serika4_gui, style = "strikethrough" },

		-- @todo Missing highlights
		-- @function.call
		-- @method.call
		-- @type.qualifier
		-- @text.math (e.g. for LaTeX math environments)
		-- @text.environment (e.g. for text environments of markup languages)
		-- @text.environment.name (e.g. for the name/the string indicating the type of text environment)
		-- @text.note
		-- @text.warning
		-- @text.danger
		-- @tag.attribute
		-- @string.special
	}

	treesitter.TSVariableBuiltin = { fg = serika.serika4_gui, style = bold }
	treesitter.TSBoolean = { fg = serika.serika9_gui, style = bold }
	treesitter.TSConstBuiltin = { fg = serika.serika7_gui, style = bold }
	treesitter.TSConstMacro = { fg = serika.serika7_gui, style = bold }
	treesitter.TSVariable = { fg = serika.serika4_gui, style = bold }
	treesitter.TSTitle = { fg = serika.serika10_gui, bg = serika.none, style = bold }
	treesitter["@variable"] = { fg = serika.serika4_gui, style = bold }
	treesitter["@variable.builtin"] = { fg = serika.serika4_gui, style = bold }
	treesitter["@variable.global"] = { fg = serika.serika4_gui, style = bold }
	treesitter["@boolean"] = { fg = serika.serika9_gui, style = bold }
	treesitter["@constant.builtin"] = { fg = serika.serika7_gui, style = bold }
	treesitter["@constant.macro"] = { fg = serika.serika7_gui, style = bold }
	treesitter["@text.title"] = { fg = serika.serika10_gui, bg = serika.none, style = bold }
	treesitter["@text.strong"] = { fg = serika.serika10_gui, bg = serika.none, style = bold }
	-- Comments
	treesitter.TSComment = { fg = serika.serika3_gui_bright, style = italic }
	-- Conditionals
	treesitter.TSConditional = { fg = serika.serika9_gui, style = italic } -- For keywords related to conditionnals.
	-- Function names
	treesitter.TSFunction = { fg = serika.serika8_gui, style = italic } -- For fuction (calls and definitions).
	treesitter.TSMethod = { fg = serika.serika7_gui, style = italic } -- For method calls and definitions.
	treesitter.TSFuncBuiltin = { fg = serika.serika8_gui, style = italic }
	-- Namespaces and property accessors
	treesitter.TSNamespace = { fg = serika.serika4_gui, style = italic } -- For identifiers referring to modules and namespaces.
	treesitter.TSField = { fg = serika.serika4_gui, style = italic } -- For fields.
	treesitter.TSProperty = { fg = serika.serika10_gui, style = italic } -- Same as `TSField`, but when accessing, not declaring.
	-- Language keywords
	treesitter.TSKeyword = { fg = serika.serika9_gui, style = italic } -- For keywords that don't fall in other categories.
	treesitter.TSKeywordFunction = { fg = serika.serika8_gui, style = italic }
	treesitter.TSKeywordReturn = { fg = serika.serika8_gui, style = italic }
	treesitter.TSKeywordOperator = { fg = serika.serika8_gui, style = italic }
	treesitter.TSRepeat = { fg = serika.serika9_gui, style = italic } -- For keywords related to loops.
	-- Strings
	treesitter.TSString = { fg = serika.serika14_gui, style = italic } -- For strings.
	treesitter.TSStringRegex = { fg = serika.serika7_gui, style = italic } -- For regexes.
	treesitter.TSStringEscape = { fg = serika.serika15_gui, style = italic } -- For escape characters within a string.
	treesitter.TSCharacter = { fg = serika.serika14_gui, style = italic } -- For characters.

	treesitter["@comment"] = { fg = serika.serika3_gui_bright, style = italic }
	treesitter["@conditional"] = { fg = serika.serika9_gui, style = italic }
	treesitter["@function"] = { fg = serika.serika8_gui, style = italic }
	treesitter["@method"] = { fg = serika.serika8_gui, style = italic }
	treesitter["@function.builtin"] = { fg = serika.serika8_gui, style = italic }
	treesitter["@namespace"] = { fg = serika.serika4_gui, style = italic }
	treesitter["@field"] = { fg = serika.serika4_gui, style = italic }
	treesitter["@property"] = { fg = serika.serika10_gui, style = italic }
	treesitter["@keyword"] = { fg = serika.serika9_gui, style = italic }
	treesitter["@keyword.function"] = { fg = serika.serika8_gui, style = italic }
	treesitter["@keyword.return"] = { fg = serika.serika8_gui, style = italic }
	treesitter["@keyword.operator"] = { fg = serika.serika8_gui, style = italic }
	treesitter["@repeat"] = { fg = serika.serika9_gui, style = italic }
	treesitter["@string"] = { fg = serika.serika14_gui, style = italic }
	treesitter["@string.regex"] = { fg = serika.serika7_gui, style = italic }
	treesitter["@string.escape"] = { fg = serika.serika15_gui, style = italic }
	treesitter["@character"] = { fg = serika.serika14_gui, style = italic }

	return treesitter
end

theme.loadFiletypes = function()
	-- Filetype-specific highlight groups

	local ft = {
		-- yaml
		yamlBlockMappingKey = { fg = serika.serika7_gui },
		yamlBool = { link = "Boolean" },
		yamlDocumentStart = { link = "Keyword" },
		yamlTSField = { fg = serika.serika7_gui },
		yamlTSString = { fg = serika.serika4_gui },
		yamlTSPunctSpecial = { link = "Keyword" },
		yamlKey = { fg = serika.serika7_gui }, -- stephpy/vim-yaml
	}

	return ft
end

theme.loadLSP = function()
	-- Lsp highlight groups

	local lsp = {
		LspDiagnosticsDefaultError = { fg = serika.serika11_gui }, -- used for "Error" diagnostic virtual text
		LspDiagnosticsSignError = { fg = serika.serika11_gui }, -- used for "Error" diagnostic signs in sign column
		LspDiagnosticsFloatingError = { fg = serika.serika11_gui }, -- used for "Error" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextError = { fg = serika.serika11_gui }, -- Virtual text "Error"
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = serika.serika11_gui }, -- used to underline "Error" diagnostics.
		LspDiagnosticsDefaultWarning = { fg = serika.serika15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsSignWarning = { fg = serika.serika15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsFloatingWarning = { fg = serika.serika15_gui }, -- used for "Warning" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextWarning = { fg = serika.serika15_gui }, -- Virtual text "Warning"
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = serika.serika15_gui }, -- used to underline "Warning" diagnostics.
		LspDiagnosticsDefaultInformation = { fg = serika.serika10_gui }, -- used for "Information" diagnostic virtual text
		LspDiagnosticsSignInformation = { fg = serika.serika10_gui }, -- used for "Information" diagnostic signs in sign column
		LspDiagnosticsFloatingInformation = { fg = serika.serika10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextInformation = { fg = serika.serika10_gui }, -- Virtual text "Information"
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = serika.serika10_gui }, -- used to underline "Information" diagnostics.
		LspDiagnosticsDefaultHint = { fg = serika.serika9_gui }, -- used for "Hint" diagnostic virtual text
		LspDiagnosticsSignHint = { fg = serika.serika9_gui }, -- used for "Hint" diagnostic signs in sign column
		LspDiagnosticsFloatingHint = { fg = serika.serika9_gui }, -- used for "Hint" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextHint = { fg = serika.serika9_gui }, -- Virtual text "Hint"
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = serika.serika10_gui }, -- used to underline "Hint" diagnostics.
		LspReferenceText = { fg = serika.serika4_gui, bg = serika.serika1_gui }, -- used for highlighting "text" references
		LspReferenceRead = { fg = serika.serika4_gui, bg = serika.serika1_gui }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = serika.serika4_gui, bg = serika.serika1_gui }, -- used for highlighting "write" references

		DiagnosticError = { link = "LspDiagnosticsDefaultError" },
		DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
		DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
		DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
		DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
		DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
		DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
		DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
		DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
		DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
		DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
		DiagnosticSignError = { link = "LspDiagnosticsSignError" },
		DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
		DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
		DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
		DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
		DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
		DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
		DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
		DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
	}

	return lsp
end

theme.loadPlugins = function()
	-- Plugins highlight groups

	local plugins = {

		-- LspTrouble
		LspTroubleText = { fg = serika.serika4_gui },
		LspTroubleCount = { fg = serika.serika9_gui, bg = serika.serika10_gui },
		LspTroubleNormal = { fg = serika.serika4_gui, bg = serika.sidebar },

		-- Diff
		diffAdded = { fg = serika.serika14_gui },
		diffRemoved = { fg = serika.serika11_gui },
		diffChanged = { fg = serika.serika15_gui },
		diffOldFile = { fg = serika.yelow },
		diffNewFile = { fg = serika.serika12_gui },
		diffFile = { fg = serika.serika7_gui },
		diffLine = { fg = serika.serika3_gui },
		diffIndexLine = { fg = serika.serika9_gui },

		-- Neogit
		NeogitBranch = { fg = serika.serika10_gui },
		NeogitRemote = { fg = serika.serika9_gui },
		NeogitHunkHeader = { fg = serika.serika8_gui },
		NeogitHunkHeaderHighlight = { fg = serika.serika8_gui, bg = serika.serika1_gui },
		NeogitDiffContextHighlight = { bg = serika.serika1_gui },
		NeogitDiffDeleteHighlight = { fg = serika.serika11_gui, style = "reverse" },
		NeogitDiffAddHighlight = { fg = serika.serika14_gui, style = "reverse" },

		-- GitGutter
		GitGutterAdd = { fg = serika.serika14_gui }, -- diff mode: Added line |diff.txt|
		GitGutterChange = { fg = serika.serika13_gui }, -- diff mode: Changed line |diff.txt|
		GitGutterDelete = { fg = serika.serika11_gui }, -- diff mode: Deleted line |diff.txt|

		-- GitSigns
		GitSignsAdd = { fg = serika.serika14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr = { fg = serika.serika14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn = { fg = serika.serika14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = serika.serika13_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr = { fg = serika.serika13_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn = { fg = serika.serika13_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = serika.serika11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr = { fg = serika.serika11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn = { fg = serika.serika11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsCurrentLineBlame = { fg = serika.serika3_gui_bright, style = bold },

		-- Telescope
		TelescopePromptBorder = { fg = serika.serika4_gui },
		TelescopeResultsBorder = { fg = serika.serika4_gui },
		TelescopePreviewBorder = { fg = serika.serika4_gui },
		TelescopeSelectionCaret = { fg = serika.serika9_gui },
		TelescopeSelection = { fg = serika.serika6_gui, bg = serika.serika2_gui },
		TelescopeMatching = { link = 'Search' },

		-- NvimTree
		NvimTreeRootFolder = { fg = serika.serika15_gui },
		NvimTreeSymlink = { fg = serika.serika5_gui },
		NvimTreeFolderName = { fg = serika.serika4_gui },
		NvimTreeFolderIcon = { fg = serika.serika9_gui },
		NvimTreeEmptyFolderName = { fg = serika.serika4_gui },
		NvimTreeOpenedFolderName = { fg = serika.serika5_gui },
		NvimTreeExecFile = { fg = serika.serika4_gui },
		NvimTreeOpenedFile = { fg = serika.serika6_gui },
		NvimTreeSpecialFile = { fg = serika.serika4_gui, style = bold},
		NvimTreeImageFile = { fg = serika.serika4_gui },
		NvimTreeMarkdownFile = { fg = serika.serika4_gui },
		NvimTreeIndentMarker = { fg = serika.serika9_gui },
		NvimTreeGitDirty = { fg = serika.serika13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitStaged = { fg = serika.serika13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitMerge = { fg = serika.serika13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitRenamed = { fg = serika.serika13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitNew = { fg = serika.serika14_gui }, -- diff mode: Added line |diff.txt|
		NvimTreeGitDeleted = { fg = serika.serika11_gui },	-- diff mode: Deleted line |diff.txt|
		NvimTreeGitIgnored = { fg = serika.serika3_gui_bright },
		LspDiagnosticsError = { fg = serika.serika12_gui },
		LspDiagnosticsWarning = { fg = serika.serika15_gui },
		LspDiagnosticsInformation = { fg = serika.serika10_gui },
		LspDiagnosticsHint = { fg = serika.serika9_gui },

		-- WhichKey
		WhichKey = { fg = serika.serika8_gui, style = bold },
		WhichKeyGroup = { fg = serika.serika5_gui },
		WhichKeyDesc = { fg = serika.serika7_gui, style = italic },
		WhichKeySeperator = { fg = serika.serika9_gui },
		WhichKeyFloating = { bg = serika.serika1_gui },
		WhichKeyFloat = { bg = serika.serika1_gui },
		WhichKeyValue = { fg = serika.serika7_gui },

		-- LspSaga
		DiagnosticError = { fg = serika.serika12_gui },
		DiagnosticWarning = { fg = serika.serika15_gui },
		DiagnosticInformation = { fg = serika.serika10_gui },
		DiagnosticHint = { fg = serika.serika9_gui },
		DiagnosticTruncateLine = { fg = serika.serika4_gui },
		LspFloatWinBorder = { fg = serika.serika4_gui, bg = serika.float },
		LspSagaDefPreviewBorder = { fg = serika.serika4_gui, bg = serika.float },
		DefinitionIcon = { fg = serika.serika7_gui },
		TargetWord = { fg = serika.serika6_gui, style = 'bold' },
		-- LspSaga code action
		LspSagaCodeActionTitle = { link = 'Title' },
		LspSagaCodeActionBorder = { fg = serika.serika4_gui, bg = serika.float },
		LspSagaCodeActionTrunCateLine = { link = 'LspSagaCodeActionBorder' },
		LspSagaCodeActionContent = { fg = serika.serika4_gui },
		-- LspSag finder
		LspSagaLspFinderBorder = { fg = serika.serika4_gui, bg = serika.float },
		LspSagaAutoPreview = { fg = serika.serika4_gui },
		LspSagaFinderSelection = { fg = serika.serika6_gui, bg = serika.serika2_gui },
		TargetFileName = { fg = serika.serika4_gui },
		FinderParam = { fg = serika.serika15_gui, bold = true },
		FinderVirtText = { fg = serika.serika15_gui15 , bg = serika.none },
		DefinitionsIcon = { fg = serika.serika9_gui },
		Definitions = { fg = serika.serika15_gui, bold = true },
		DefinitionCount = { fg = serika.serika10_gui },
		ReferencesIcon = { fg = serika.serika9_gui },
		References = { fg = serika.serika15_gui, bold = true },
		ReferencesCount = { fg = serika.serika10_gui },
		ImplementsIcon = { fg = serika.serika9_gui },
		Implements = { fg = serika.serika15_gui, bold = true },
		ImplementsCount = { fg = serika.serika10_gui },
		-- LspSaga finder spinner
		FinderSpinnerBorder = { fg = serika.serika4_gui, bg = serika.float },
		FinderSpinnerTitle = { link = 'Title' },
		FinderSpinner = { fg = serika.serika8_gui, bold = true },
		FinderPreviewSearch = { link = 'Search' },
		-- LspSaga definition
		DefinitionBorder = { fg = serika.serika4_gui, bg = serika.float },
		DefinitionArrow = { fg = serika.serika8_gui },
		DefinitionSearch = { link = 'Search' },
		DefinitionFile = { fg = serika.serika4_gui, bg = serika.float },
		-- LspSaga hover
		LspSagaHoverBorder = { fg = serika.serika4_gui, bg = serika.float },
		LspSagaHoverTrunCateLine = { link = 'LspSagaHoverBorder' },
		-- Lsp rename
		LspSagaRenameBorder = { fg = serika.serika4_gui, bg = serika.float },
		LspSagaRenameMatch = { fg = serika.serika6_gui, bg = serika.serika9_gui },
		-- Lsp diagnostic
		LspSagaDiagnosticSource = { link = 'Comment' },
		LspSagaDiagnosticError = { link = 'DiagnosticError' },
		LspSagaDiagnosticWarn = { link = 'DiagnosticWarn' },
		LspSagaDiagnosticInfo = { link = 'DiagnosticInfo' },
		LspSagaDiagnosticHint = { link = 'DiagnosticHint' },
		LspSagaErrorTrunCateLine = { link = 'DiagnosticError' },
		LspSagaWarnTrunCateLine = { link = 'DiagnosticWarn' },
		LspSagaInfoTrunCateLine = { link = 'DiagnosticInfo' },
		LspSagaHintTrunCateLine = { link = 'DiagnosticHint' },
		LspSagaDiagnosticBorder = { fg = serika.serika4_gui, bg = serika.float },
		LspSagaDiagnosticHeader = { fg = serika.serika4_gui },
		DiagnosticQuickFix = { fg = serika.serika14_gui, bold = true },
		DiagnosticMap = { fg = serika.serika15_gui },
		DiagnosticLineCol = { fg = serika.serika4_gui },
		LspSagaDiagnosticTruncateLine = { link = 'LspSagaDiagnosticBorder' },
		ColInLineDiagnostic = { link = 'Comment' },
		-- LspSaga signture help
		LspSagaSignatureHelpBorder = { fg = serika.serika4_gui, bg = serika.float },
		LspSagaShTrunCateLine = { link = 'LspSagaSignatureHelpBorder' },
		-- Lspsaga lightbulb
		LspSagaLightBulb = { link = 'DiagnosticSignHint' },
		-- LspSaga shadow
		SagaShadow = { fg = 'black' },
		-- LspSaga float
		LspSagaBorderTitle = { link = 'Title' },
		-- LspSaga Outline
		LSOutlinePreviewBorder = { fg = serika.serika4_gui, bg = serika.float },
		OutlineIndentEvn = { fg = serika.serika15_gui },
		OutlineIndentOdd = { fg = serika.serika12_gui },
		OutlineFoldPrefix = { fg = serika.serika11_gui },
		OutlineDetail = { fg = serika.serika4_gui },
		-- LspSaga all floatwindow
		LspFloatWinNormal = { fg = serika.serika4_gui, bg = serika.float },
		-- Saga End

		-- Sneak
		Sneak = { fg = serika.serika0_gui, bg = serika.serika4_gui },
		SneakScope = { bg = serika.serika1_gui },

		-- Cmp
		CmpItemKind = { fg = serika.serika15_gui },
		CmpItemAbbrMatch = { fg = serika.serika5_gui, style = bold },
		CmpItemAbbrMatchFuzzy = { fg = serika.serika5_gui, style = bold },
		CmpItemAbbr = { fg = serika.serika4_gui },
		CmpItemMenu = { fg = serika.serika14_gui },

		-- Indent Blankline
		IndentBlanklineChar = { fg = serika.serika3_gui },
		IndentBlanklineContextChar = { fg = serika.serika10_gui },

		-- headline
		-- bg = (10 * serika0 + fg) / 11
		Headline1 = { fg = serika.serika12_gui, bg = "#3d3c44", bold = true },
		Headline2 = { fg = serika.serika13_gui, bg = "#3f4247", bold = true },
		Headline3 = { fg = serika.serika14_gui, bg = "#394147", bold = true },
		Headline4 = { fg = serika.serika9_gui, bg = "#363e4c", bold = true },
		Headline5 = { fg = serika.serika15_gui, bg = "#3a3c4a", bold = true },
		Headline6 = { fg = serika.serika4_gui, bg = "#3d434f", bold = true },

		Quote = { fg = serika.serika2_gui },
		CodeBlock = { bg = serika.serika1_gui },
		Dash = { serika.serika10_gui, bold = true },

		-- Illuminate
		illuminatedWord = { bg = serika.serika3_gui },
		illuminatedCurWord = { bg = serika.serika3_gui },
		IlluminatedWordText = { bg = serika.serika3_gui },
		IlluminatedWordRead = { bg = serika.serika3_gui },
		IlluminatedWordWrite = { bg = serika.serika3_gui },

		-- nvim-dap
		DapBreakpoint = { fg = serika.serika14_gui },
		DapStopped = { fg = serika.serika15_gui },

		-- nvim-dap-ui
		DapUIVariable = { fg = serika.serika4_gui },
		DapUIScope = { fg = serika.serika8_gui },
		DapUIType = { fg = serika.serika9_gui },
		DapUIValue = { fg = serika.serika4_gui },
		DapUIModifiedValue = { fg = serika.serika8_gui },
		DapUIDecoration = { fg = serika.serika8_gui },
		DapUIThread = { fg = serika.serika8_gui },
		DapUIStoppedThread = { fg = serika.serika8_gui },
		DapUIFrameName = { fg = serika.serika4_gui },
		DapUISource = { fg = serika.serika9_gui },
		DapUILineNumber = { fg = serika.serika8_gui },
		DapUIFloatBorder = { fg = serika.serika8_gui },
		DapUIWatchesEmpty = { fg = serika.serika11_gui },
		DapUIWatchesValue = { fg = serika.serika8_gui },
		DapUIWatchesError = { fg = serika.serika11_gui },
		DapUIBreakpointsPath = { fg = serika.serika8_gui },
		DapUIBreakpointsInfo = { fg = serika.serika8_gui },
		DapUIBreakpointsCurrentLine = { fg = serika.serika8_gui },
		DapUIBreakpointsLine = { fg = serika.serika8_gui },

		-- Hop
		HopNextKey = { fg = serika.serika4_gui, style = bold },
		HopNextKey1 = { fg = serika.serika8_gui, style = bold },
		HopNextKey2 = { fg = serika.serika4_gui },
		HopUnmatched = { fg = serika.serika3_gui },

		-- Fern
		FernBranchText = { fg = serika.serika3_gui_bright },

		-- nvim-ts-rainbow
		rainbowcol1 = { fg = serika.serika15_gui },
		rainbowcol2 = { fg = serika.serika13_gui },
		rainbowcol3 = { fg = serika.serika11_gui },
		rainbowcol4 = { fg = serika.serika7_gui },
		rainbowcol5 = { fg = serika.serika8_gui },
		rainbowcol6 = { fg = serika.serika15_gui },
		rainbowcol7 = { fg = serika.serika13_gui },

		-- lightspeed
		LightspeedLabel = { fg = serika.serika8_gui, style = bold },
		LightspeedLabelOverlapped = { fg = serika.serika8_gui, style = "bold,underline" },
		LightspeedLabelDistant = { fg = serika.serika15_gui, style = bold },
		LightspeedLabelDistantOverlapped = { fg = serika.serika15_gui, style = "bold,underline" },
		LightspeedShortcut = { fg = serika.serika10_gui, style = bold },
		LightspeedShortcutOverlapped = { fg = serika.serika10_gui, style = "bold,underline" },
		LightspeedMaskedChar = { fg = serika.serika4_gui, bg = serika.serika2_gui, style = bold },
		LightspeedGreyWash = { fg = serika.serika3_gui_bright },
		LightspeedUnlabeledMatch = { fg = serika.serika4_gui, bg = serika.serika1_gui },
		LightspeedOneCharMatch = { fg = serika.serika8_gui, style = "bold,reverse" },
		LightspeedUniqueChar = { style = "bold,underline" },

		-- copilot
		CopilotLabel = { fg = serika.serika3_gui, bg = serika.none },

		-- Statusline
		StatusLineDull = { fg = serika.serika3_gui, bg = serika.serika1_gui },
		StatusLineAccent = { fg = serika.serika0_gui, bg = serika.serika13_gui },

		-- mini.nvim
		MiniCompletionActiveParameter = { style = "underline" },

		MiniCursorword = { bg = serika.serika3_gui },
		MiniCursorwordCurrent = { bg = serika.serika3_gui },

		MiniIndentscopeSymbol = { fg = serika.serika10_gui },
		MiniIndentscopePrefix = { style = "nocombine" }, -- Make it invisible

		MiniJump = { fg = serika.serika0_gui, bg = serika.serika4_gui },

		MiniJump2dSpot = { fg = serika.serika12_gui, style = "bold,nocombine" },

		MiniStarterCurrent = { style = "nocombine" },
		MiniStarterFooter = { fg = serika.serika14_gui, style = italic },
		MiniStarterHeader = { fg = serika.serika9_gui },
		MiniStarterInactive = { link = "Comment" },
		MiniStarterItem = { link = "Normal" },
		MiniStarterItemBullet = { fg = serika.serika4_gui },
		MiniStarterItemPrefix = { fg = serika.serika15_gui },
		MiniStarterSection = { fg = serika.serika4_gui },
		MiniStarterQuery = { fg = serika.serika10_gui },

		MiniStatuslineDevinfo = { fg = serika.serika4_gui, bg = serika.serika2_gui },
		MiniStatuslineFileinfo = { fg = serika.serika4_gui, bg = serika.serika2_gui },
		MiniStatuslineFilename = { fg = serika.serika4_gui, bg = serika.serika1_gui },
		MiniStatuslineInactive = { fg = serika.serika4_gui, bg = serika.serika0_gui, style = bold },
		MiniStatuslineModeCommand = { fg = serika.serika0_gui, bg = serika.serika15_gui, style = bold },
		MiniStatuslineModeInsert = { fg = serika.serika1_gui, bg = serika.serika4_gui, style = bold },
		MiniStatuslineModeNormal = { fg = serika.serika1_gui, bg = serika.serika9_gui, style = bold },
		MiniStatuslineModeOther = { fg = serika.serika0_gui, bg = serika.serika13_gui, style = bold },
		MiniStatuslineModeReplace = { fg = serika.serika0_gui, bg = serika.serika11_gui, style = bold },
		MiniStatuslineModeVisual = { fg = serika.serika0_gui, bg = serika.serika7_gui, style = bold },

		MiniSurround = { link = "IncSearch" },

		MiniTablineCurrent = { bg = serika.serika1_gui },
		MiniTablineFill = { link = "TabLineFill" },
		MiniTablineHidden = { bg = serika.serika0_gui, fg = serika.serika3_gui },
		MiniTablineModifiedCurrent = { bg = serika.serika1_gui, fg = serika.serika15_gui },
		MiniTablineModifiedHidden = { bg = serika.serika0_gui, fg = serika.serika15_gui },
		MiniTablineModifiedVisible = { bg = serika.serika2_gui, fg = serika.serika15_gui },
		MiniTablineTabpagesection = { fg = serika.serika10_gui, bg = serika.serika6_gui, style = reverse_bold },
		MiniTablineVisible = { bg = serika.serika2_gui },

		MiniTestEmphasis = { style = bold },
		MiniTestFail = { fg = serika.serika11_gui, style = bold },
		MiniTestPass = { fg = serika.serika14_gui, style = bold },

		MiniTrailspace = { bg = serika.serika11_gui },

		-- Aerail
		AerialLine = { bg = serika.serika2_gui },
		AerialLineNC = { bg = serika.serika2_gui },

		AerialArrayIcon = { fg = serika.serika13_gui },
		AerialBooleanIcon = { fg = serika.serika9_gui, style = bold },
		AerialClassIcon = { fg = serika.serika9_gui },
		AerialConstantIcon = { fg = serika.serika13_gui },
		AerialConstructorIcon = { fg = serika.serika9_gui },
		AerialEnumIcon = { fg = serika.serika9_gui },
		AerialEnumMemberIcon = { fg = serika.serika4_gui },
		AerialEventIcon = { fg = serika.serika9_gui },
		AerialFieldIcon = vim.g.serika_italic and { fg = serika.serika4_gui, style = italic } or { fg = serika.serika4_gui },
		AerialFileIcon = { fg = serika.serika14_gui },
		AerialFunctionIcon = vim.g.serika_italic and { fg = serika.serika8_gui, style = italic } or { fg = serika.serika8_gui },
		AerialInterfaceIcon = { fg = serika.serika9_gui },
		AerialKeyIcon = { fg = serika.serika9_gui },
		AerialMethodIcon = vim.g.serika_italic and { fg = serika.serika7_gui, style = italic } or { fg = serika.serika7_gui },
		AerialModuleIcon = vim.g.serika_italic and { fg = serika.serika4_gui, style = italic } or { fg = serika.serika4_gui },
		AerialNamespaceIcon = vim.g.serika_italic and { fg = serika.serika4_gui, style = italic }
			or { fg = serika.serika4_gui },
		AerialNullIcon = { fg = serika.serika9_gui },
		AerialNumberIcon = { fg = serika.serika15_gui },
		AerialObjectIcon = { fg = serika.serika9_gui },
		AerialOperatorIcon = { fg = serika.serika9_gui },
		AerialPackageIcon = vim.g.serika_italic and { fg = serika.serika4_gui, style = italic } or { fg = serika.serika4_gui },
		AerialPropertyIcon = vim.g.serika_italic and { fg = serika.serika4_gui, style = italic }
			or { fg = serika.serika10_gui },
		AerialStringIcon = vim.g.serika_italic and { fg = serika.serika14_gui, style = italic } or { fg = serika.serika14_gui },
		AerialStructIcon = { fg = serika.serika9_gui },
		AerialTypeParameterIcon = { fg = serika.serika10_gui },
		AerialVariableIcon = { fg = serika.serika4_gui, style = bold },

		AerialArray = { fg = serika.serika13_gui },
		AerialBoolean = { fg = serika.serika9_gui, style = bold },
		AerialClass = { fg = serika.serika9_gui },
		AerialConstant = { fg = serika.serika13_gui },
		AerialConstructor = { fg = serika.serika9_gui },
		AerialEnum = { fg = serika.serika9_gui },
		AerialEnumMember = { fg = serika.serika4_gui },
		AerialEvent = { fg = serika.serika9_gui },
		AerialField = vim.g.serika_italic and { fg = serika.serika4_gui, style = italic } or { fg = serika.serika4_gui },
		AerialFile = { fg = serika.serika14_gui },
		AerialFunction = vim.g.serika_italic and { fg = serika.serika8_gui, style = italic } or { fg = serika.serika8_gui },
		AerialInterface = { fg = serika.serika9_gui },
		AerialKey = { fg = serika.serika9_gui },
		AerialMethod = vim.g.serika_italic and { fg = serika.serika7_gui, style = italic } or { fg = serika.serika7_gui },
		AerialModule = vim.g.serika_italic and { fg = serika.serika4_gui, style = italic } or { fg = serika.serika4_gui },
		AerialNamespace = vim.g.serika_italic and { fg = serika.serika4_gui, style = italic } or { fg = serika.serika4_gui },
		AerialNull = { fg = serika.serika9_gui },
		AerialNumber = { fg = serika.serika15_gui },
		AerialObject = { fg = serika.serika9_gui },
		AerialOperator = { fg = serika.serika9_gui },
		AerialPackage = vim.g.serika_italic and { fg = serika.serika4_gui, style = italic } or { fg = serika.serika4_gui },
		AerialProperty = vim.g.serika_italic and { fg = serika.serika4_gui, style = italic } or { fg = serika.serika10_gui },
		AerialString = vim.g.serika_italic and { fg = serika.serika14_gui, style = italic } or { fg = serika.serika14_gui },
		AerialStruct = { fg = serika.serika9_gui },
		AerialTypeParameter = { fg = serika.serika10_gui },
		AerialVariable = { fg = serika.serika4_gui, style = bold },

		-- nvim-navic
		NavicIconsArray = { fg = serika.serika13_gui },
		NavicIconsBoolean = { fg = serika.serika9_gui, style = bold },
		NavicIconsClass = { fg = serika.serika9_gui },
		NavicIconsConstant = { fg = serika.serika13_gui },
		NavicIconsConstructor = { fg = serika.serika9_gui },
		NavicIconsEnum = { fg = serika.serika9_gui },
		NavicIconsEnumMember = { fg = serika.serika4_gui },
		NavicIconsEvent = { fg = serika.serika9_gui },
		NavicIconsField = { fg = serika.serika4_gui, style = italic },
		NavicIconsFile = { fg = serika.serika14_gui },
		NavicIconsFunction = { fg = serika.serika8_gui, style = italic },
		NavicIconsInterface = { fg = serika.serika9_gui },
		NavicIconsKey = { fg = serika.serika9_gui },
		NavicIconsMethod = { fg = serika.serika7_gui, style = italic },
		NavicIconsModule = { fg = serika.serika4_gui, style = italic },
		NavicIconsNamespace = { fg = serika.serika4_gui, style = italic },
		NavicIconsNull = { fg = serika.serika9_gui },
		NavicIconsNumber = { fg = serika.serika15_gui },
		NavicIconsObject = { fg = serika.serika9_gui },
		NavicIconsOperator = { fg = serika.serika9_gui },
		NavicIconsPackage = { fg = serika.serika4_gui, style = italic },
		NavicIconsProperty = { fg = serika.serika4_gui, style = italic },
		NavicIconsString = { fg = serika.serika14_gui, style = italic },
		NavicIconsStruct = { fg = serika.serika9_gui },
		NavicIconsTypeParameter = { fg = serika.serika10_gui },
		NavicIconsVariable = { fg = serika.serika4_gui, style = bold },
		NavicText = { fg = serika.serika4_gui },
		NavicSeparator = { fg = serika.serika4_gui },
	}
	-- Options:

	-- Disable nvim-tree background
	if vim.g.serika_disable_background then
		plugins.NvimTreeNormal = { fg = serika.serika4_gui, bg = serika.none }
	else
		plugins.NvimTreeNormal = { fg = serika.serika4_gui, bg = serika.sidebar }
	end

	if vim.g.serika_enable_sidebar_background then
		plugins.NvimTreeNormal = { fg = serika.serika4_gui, bg = serika.sidebar }
	else
		plugins.NvimTreeNormal = { fg = serika.serika4_gui, bg = serika.none }
	end

	return plugins
end

return theme

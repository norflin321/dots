require("nvim-treesitter.configs").setup({
	auto_install = false,
	highlight = {
		enable = true
	}
})

function floatWinConfig(width_ration, height_ration)
	return function()
		local screen_w = vim.opt.columns:get()
		local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
		local window_w = screen_w * width_ration 
		local window_h = screen_h * height_ration
		local window_w_int = math.floor(window_w)
		local window_h_int = math.floor(window_h)
		local center_x = (screen_w - window_w) / 2
		local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()
		return {
			border = "rounded",
			relative = "editor",
			row = center_y,
			col = center_x,
			width = window_w_int,
			height = window_h_int,
			style = "minimal",
		}
	end
end

require("nvim-tree").setup({
	git = { enable = false },
	view = {
		float = {
			enable = true,
			open_win_config = floatWinConfig(0.3, 0.8)
		},
		width = function()
			return math.floor(vim.opt.columns:get() * 0.5)
		end,
		mappings = {
			list = {
				{ key = { "<ESC>", "q" }, action = "close" },
			}
		}
	},
	renderer = {
		icons = {
			git_placement = "after",
			glyphs = {
				git = {
					unstaged = "M",
					staged = "M",
					renamed = "U",
					unmerged = "?",
					untracked = "U",
					deleted = "D",
					ignored = "I",
				},
			}
		}
	},
	filters = {
		custom = { ".DS_Store" }
	}
})

require("colorizer").setup()

require("aerial").setup({
	backends = { "treesitter" },
	close_on_select = true,
	close_automatic_events = { unfocus, switch_buffer, unsupported },
	highlight_on_hover = true,
	attach_mode = "global",
	show_guides = true,
	layout = {
		-- width = 50,
		min_width = 30,
		-- max_width = 50,
		-- default_direction = "float",
		placement = "edge",
	},
	float = {
		-- override = floatWinConfig(0.25, 0.4),
	},
	guides = {
    mid_item = "├─ ",
    last_item = "└─ ",
    nested_top = "│ ",
    whitespace = "  ",
  },
	filter_kind = { "Array", "Class", "Constructor", "Enum", "EnumMember", "Event", "Field", "Function", "Interface", "Method", "Module", "Object", "Package", "Property", "Collapsed" },
	keymaps = {
		["<CR>"] = "actions.jump",
		["o"] = "actions.jump",
		["p"] = "actions.scroll",
		["j"] = "actions.down_and_scroll",
		["k"] = "actions.up_and_scroll",
		["<ESC>"] = "actions.close",
		["<c-h>"] = "actions.close",
		["<c-l>"] = "actions.close",
		["<c-n>"] = "actions.close",
	},
})

require("satellite").setup({
	current_only = false,
	winblend = 0,
	handlers = {
		cursor = { enable = false },
		marks = { enable = false },
		diagnostic = { enable = false },
		gitsigns = { enable = false },
		search = { enable = true },
	},
})

-- Find And Replace In Selection (copy word to clipboard, select text, press r, input word for replacement, done)
function escape_string(str)
	return str:gsub('"', '\\"'):gsub("\n", "\\n"):gsub("'", "\\'"):gsub("`", "\\`"):gsub(" ", "\\ "):gsub("\\", "\\\\")
end
function FARIS()
	local clipboard = escape_string(vim.api.nvim_exec([[echo getreg("*")]], true))
	vim.ui.input({ prompt = clipboard .. " => "}, function(input)
		if input ~= nil then
			vim.api.nvim_exec(":'<,'>s/" .. clipboard .. "/" .. escape_string(input) .. "/gi", false)
			vim.api.nvim_feedkeys("<CR>", "n", false)
			vim.api.nvim_exec(":nohl", false)
		end
		vim.defer_fn(function() vim.cmd("echom ''") end, 0)
	end)
end
vim.api.nvim_set_keymap("v", "r", [[:<C-u>lua FARIS()<CR>]], { noremap = true, silent = true })

require("hbac").setup({
  autoclose = true, -- set autoclose to false if you want to close manually
  threshold = 10, -- hbac will start closing unedited buffers once that number is reached
  close_command = function(bufnr)
    vim.api.nvim_buf_delete(bufnr, {})
  end,
  close_buffers_with_windows = false, -- hbac will close buffers with associated windows if this option is `true`
  telescope = {
    -- See #telescope-configuration below
  },
})

require("dropbar").setup({
  general = {},
  icons = {
    ui = { bar = { separator = " 〉", extends = "…", } },
    kinds = {
      use_devicons = false,
      symbols = {
        Array = "󰅪 ",
        Boolean = " ",
        BreakStatement = "󰙧 ",
        Call = "󰃷 ",
        CaseStatement = "󱃙 ",
        Class = " ",
        Color = "󰏘 ",
        Constant = "󰏿 ",
        Constructor = " ",
        ContinueStatement = "→ ",
        Copilot = " ",
        Declaration = "󰙠 ",
        Delete = "󰩺 ",
        DoStatement = "󰑖 ",
        Enum = " ",
        EnumMember = ' ',
        Event = ' ',
        Field = ' ',
        File = '󰈔 ',
        Folder = '󰉋 ',
        ForStatement = '󰑖 ',
        Function = '󰊕 ',
        H1Marker = '󰉫 ',
        H2Marker = '󰉬 ',
        H3Marker = '󰉭 ',
        H4Marker = '󰉮 ',
        H5Marker = '󰉯 ',
        H6Marker = '󰉰 ',
        Identifier = "󰀫 ",
        IfStatement = "󰇉 ",
        Interface = " ",
        Keyword = "󰌋 ",
        List = "󰅪 ",
        Log = "󰦪 ",
        Lsp = " ",
        Macro = "󰁌 ",
        MarkdownH1 = "󰉫 ",
        MarkdownH2 = "󰉬 ",
        MarkdownH3 = "󰉭 ",
        MarkdownH4 = "󰉮 ",
        MarkdownH5 = "󰉯 ",
        MarkdownH6 = "󰉰 ",
        Method = "󰆧 ",
        Module = "󰏗 ",
        Namespace = "󰅩 ",
        Null = "󰢤 ",
        Number = "󰎠 ",
        Object = "󰅩 ",
        Operator = "󰆕 ",
        Package = "󰆦 ",
        Pair = "󰅪 ",
        Property = " ",
        Reference = "󰦾 ",
        Regex = " ",
        Repeat = "󰑖 ",
        Scope = "󰅩 ",
        Snippet = "󰩫 ",
        Specifier = "󰦪 ",
        Statement = "󰅩 ",
        String = "󰉾 ",
        Struct = " ",
        SwitchStatement = "󰺟 ",
        Terminal = " ",
        Text = " ",
        Type = " ",
        TypeParameter = "󰆩 ",
        Unit = " ",
        Value = "󰎠 ",
        Variable = "󰀫 ",
        WhileStatement = "󰑖 ",
      }
    }
  },
  sources = {
    treesitter = {
      valid_types = {
        -- "array",
        -- "boolean",
        -- "break_statement",
        -- "call",
        -- "case_statement",
        "class",
        -- "constant",
        -- "constructor",
        -- "continue_statement",
        -- "delete",
        -- "do_statement",
        -- "enum",
        -- "enum_member",
        -- "event",
        -- "for_statement",
        "function",
        "h1_marker",
        "h2_marker",
        "h3_marker",
        "h4_marker",
        "h5_marker",
        "h6_marker",
        -- "if_statement",
        "interface",
        -- "keyword",
        -- "list",
        -- "macro",
        "method",
        -- "module",
        -- "namespace",
        -- "null",
        -- "number",
        -- "operator",
        -- "package",
        -- "pair",
        -- "property",
        -- "reference",
        -- "repeat",
        -- "scope",
        -- "specifier",
        -- "string",
        "struct",
        -- "switch_statement",
        -- "type",
        -- "type_parameter",
        -- "unit",
        -- "value",
        -- "variable",
        -- "while_statement",
        -- "declaration",
        -- "field",
        -- "identifier",
        -- "object",
        -- "statement",
        -- "text",
      }
    }
  },
  menu = {}
})

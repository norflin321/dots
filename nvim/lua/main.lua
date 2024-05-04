require("nvim-treesitter.configs").setup({
	auto_install = false,
	highlight = {
		enable = true
	}
})

local function floatWinConfig(width_ration, height_ration)
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
			open_win_config = floatWinConfig(0.4, 0.8)
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
  lsp = {
    diagnostics_trigger_update = false
  },
	close_on_select = true,
	close_automatic_events = { "unfocus", "switch_buffer", "unsupported" },
	highlight_on_hover = true,
	attach_mode = "global",
	show_guides = true,
	layout = {
		width = 50,
		min_width = 30,
		max_width = 50,
		default_direction = "float",
		-- placement = "edge",
	},
	float = {
		override = floatWinConfig(0.25, 0.4),
	},
	guides = {
    mid_item = "├─ ",
    last_item = "└─ ",
    nested_top = "│ ",
    whitespace = "  ",
  },
	filter_kind = {
    "Array",
    "Class",
    "Constructor",
    "Enum",
    "EnumMember",
    "Event",
    "Field",
    "Function",
    "Interface",
    "Method",
    "Module",
    "Object",
    "Package",
    "Property",
    "Collapsed"
  },
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

-- Workaround for https://github.com/stevearc/aerial.nvim/issues/331
vim.keymap.set("n", "<c-t>", function()
  require('aerial').refetch_symbols()
  vim.cmd.AerialOpen 'float'
  vim.cmd.doautocmd 'BufWinEnter'
end)

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

require("hbac").setup({
  autoclose = true, -- set autoclose to false if you want to close manually
  threshold = 5, -- hbac will start closing unedited buffers once that number is reached
  close_command = function(bufnr)
    vim.api.nvim_buf_delete(bufnr, {})
  end,
  close_buffers_with_windows = false, -- hbac will close buffers with associated windows if this option is `true`
})

require("gps").setup()

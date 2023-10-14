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
			border = 'rounded',
			relative = 'editor',
			row = center_y,
			col = center_x,
			width = window_w_int,
			height = window_h_int,
			style = "minimal",
		}
	end
end

require('nvim-tree').setup({
	git = { enable = false },
	view = {
		float = {
			enable = true,
			open_win_config = floatWinConfig(0.5, 0.9)
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

require'colorizer'.setup()

require('aerial').setup({
	backends = { "treesitter" },
	close_on_select = true,
	close_automatic_events = { unfocus, switch_buffer, unsupported },
	highlight_on_hover = true,
	attach_mode = "global",
	show_guides = true,
	layout = {
		width = 50,
		min_width = 50,
		max_width = 50,
		default_direction = "float",
		placement = "edge",
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

require('satellite').setup({
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

-- Finad And Replace In Selection (copy word to clipboard, select text, press r, input word for replacement, done)
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

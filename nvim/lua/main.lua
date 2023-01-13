-- https://devhints.io/lua
-- create function
function MyCustomFunc()
  local greet = "hello world!"
  print(greet)
end

-- create new vim command, work only in nvim version > 0.7.0
-- vim.api.nvim_create_user_command('Custom', func, { nargs = 1 })
-- call vim command
-- vim.api.nvim_command('Custom')

-- treesitter
require "nvim-treesitter.configs".setup{}

require("nvim-gps").setup({depth = 0})
require'colorizer'.setup()

require('vscode').setup({
		italic_comments = true,
		-- Override colors (see ./lua/vscode/colors.lua)
		color_overrides = {
			vscLightBlue = '#c3c3c3',
		},
})

local HEIGHT_RATIO = 0.8  -- You can change this
local WIDTH_RATIO = 0.5   -- You can change this too
require('nvim-tree').setup({
	git = { enable = false },
	view = {
		float = {
			enable = true,
			open_win_config = function()
				local screen_w = vim.opt.columns:get()
				local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
				local window_w = screen_w * WIDTH_RATIO
				local window_h = screen_h * HEIGHT_RATIO
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
				}
			end,
		},
		width = function()
			return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
		end,
		mappings = {
			list = {
				{ key = { "<ESC>", "q" }, action = "close" },
			}
		}
	},
})

require('aerial').setup({
	close_on_select = true,
	close_automatic_events = { unfocus, switch_buffer, unsupported },
	highlight_on_hover = true,
	layout = {
		width = 100,
		min_width = 100,
		default_direction = "float",
		placement = "edge",
	},
	float = {
		width = 100,
		min_width = 100,
		relative = "editor"
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

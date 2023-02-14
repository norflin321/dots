-- Allow clipboard copy paste in neovim
if vim.g.neovide then
	vim.g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key
	vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
	vim.keymap.set('v', '<D-c>', '"+y') -- Copy
	vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
	vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
	vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
	vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode
end
vim.g.neovide_input_use_logo = 1
vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})

require "nvim-treesitter.configs".setup{}
require("nvim-gps").setup({depth = 0})
require'colorizer'.setup()

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
				{ key = { "<c-h>"}, action = "split" },
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

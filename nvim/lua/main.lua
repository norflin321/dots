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

-- require("colorizer").setup()

require("nvim-tree").setup({
	git = { enable = false },
	view = {
		float = {
			enable = true,
			open_win_config = function()
				return {
					relative = 'editor',
					border = 'rounded',
					row = 3,
					col = 35,
					width = 50,
					height = 45,
				}
			end,
		},
		width = function()
			return math.floor(vim.opt.columns:get() * 0.5)
		end,
		mappings = {
			list = {
				{ key = { "<ESC>", "q" }, action = "close" },
				{ key = { "<c-h>"}, action = "split" },
			}
		}
	},
})

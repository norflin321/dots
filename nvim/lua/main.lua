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

require("nvim-gps").setup({depth = 0})
require "nvim-treesitter.configs".setup{}
require'colorizer'.setup()
require("nvim-tree").setup({
	git = {
		enable = false
	},
	view = {
		adaptive_size = true,
		float = {
			enable = true,
			open_win_config = {
				relative = "editor",
				border = "rounded",
				width = 100,
				row = 0,
				col = 1,
			}
		}
	}
})

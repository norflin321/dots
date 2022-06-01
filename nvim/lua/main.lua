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

local ts_utils = require("nvim-treesitter.ts_utils")
local ts_parsers = require("nvim-treesitter.parsers")
local ts_query = require("nvim-treesitter.query")

function printTable(t, indent)
  indent = indent or ''
  for key, value in pairs(t) do
    if type(value) == "table" then
      print(indent .. key .. ":")
      printTable(value, indent .. ' ')
    else
      print(indent .. key .. ": " .. tostring(value))
    end
  end
end

local M = {}

function M.setup()
  -- local filetype = vim.api.nvim_buf_get_option(0, "filetype")
  -- local lang = ts_parsers.ft_to_lang(filetype)
  -- local query_text = [[ ((function_declaration name: (identifier) @function-name) @scope-root) ]] -- your query
  -- local query = vim.treesitter.query.parse_query(lang, query_text)
  -- print("gps setup:", lang, vim.treesitter.query)
  -- printTable(vim.treesitter.query)
end

return M

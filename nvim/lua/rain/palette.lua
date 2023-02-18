local M = {}

local white = "#cbcbcb"

M.get_base_colors = function()
  return {
		bg0 = "#212121", -- background
		bg1 = "#292929", -- cursorline
		bg2 = "#212121",
		bg3 = "#212121",
		bg4 = white,
		fg0 = white,
		fg1 = white,
		fg2 = white,
		fg3 = white,
		fg4 = white,
		red = white,
		green = white,
		yellow = white,
		blue = white,
		purple = white,
		aqua = white,
		orange = white,
		neutral_red = white,
		neutral_green = white,
		neutral_yellow = white,
		neutral_blue = white,
		neutral_purple = white,
		neutral_aqua = white,
		gray = "#767676",
  }
end

return M

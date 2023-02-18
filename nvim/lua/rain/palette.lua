local M = {}

local white = "#D0D0D0"

M.get_base_colors = function()
  return {
		bg0 = "#121212", -- background
		bg1 = "#1a1a1a", -- cursorline
		bg2 = "#36323b",
		bg3 = "#49483E",
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

-- background            #050014
-- foreground            #736d7c
-- cursor                #8b91fa
-- selection_background  #36323b
-- color0                #230045
-- color8                #362c45
-- color1                #7c1525
-- color9                #df5066
-- color2                #337e6f
-- color10               #52e0c4
-- color3                #7f6f49
-- color11               #e0c286
-- color4                #4f4a7f
-- color12               #8e86df
-- color5                #593f7e
-- color13               #a675df
-- color6                #57767f
-- color14               #9ad3df
-- color7                #736d7c
-- color15               #8b91fa
-- selection_foreground #050014

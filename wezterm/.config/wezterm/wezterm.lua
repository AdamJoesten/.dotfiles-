local wezterm = require("wezterm")
local config = {}

-- Colors
config.color_scheme = "tokyonight_night"
-- Fonts
config.font = wezterm.font("0xProto Nerd Font Mono")
-- Window
config.window_decorations = "RESIZE" -- Remove title bar, enable window reizing

return config

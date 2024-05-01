local wezterm = require("wezterm")
local config = {}

-- Colors
config.color_scheme = "tokyonight_night"
-- Font
config.font = wezterm.font("0xProto Nerd Font Mono")
-- Application window
config.window_decorations = "RESIZE" -- Remove title bar, enable window resize

return config

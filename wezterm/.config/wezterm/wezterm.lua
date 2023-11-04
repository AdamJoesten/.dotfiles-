local wezterm = require("wezterm")
local config = {}

-- Colors
config.color_scheme = "tokyonight_night"
-- Font
config.font = wezterm.font("IosevkaTerm NFM")
config.hide_tab_bar_if_only_one_tab = true
config.show_tab_index_in_tab_bar = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"

return config

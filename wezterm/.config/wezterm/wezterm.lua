local wezterm = require("wezterm")
local config = {}

-- Colors
config.color_scheme = "tokyonight_night"
-- Font
config.font = wezterm.font_with_fallback({
	"IosevkaTerm Nerd Font Mono",
})
config.harfbuzz_features = { "zero" }

return config

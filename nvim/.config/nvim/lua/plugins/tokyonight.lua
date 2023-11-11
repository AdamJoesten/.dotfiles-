return {
	"folke/tokyonight.nvim",
	lazy = false, -- make sure we load plugin during startup if it is your main colorscheme
	priority = 1000, -- make sure we load plugin before all the other start plugins
	-- TODO: what happens if we set the style to night in opts and forgo config
	config = function()
		require("tokyonight").setup({
			style = "night",
		})
		-- load the colorscheme here
		vim.cmd([[colorscheme tokyonight]])
	end,
}

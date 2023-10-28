return {
	"folke/tokyonight.nvim",
	-- TODO: Why set lazy when I could replace config with init?
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require("tokyonight").setup({
			style = "night",
		})
		-- load the colorscheme here
		vim.cmd([[colorscheme tokyonight]])
	end,
}

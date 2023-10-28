if true then return {} end
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	-- TODO: Why is this init and not config? Can these opts go in nvim.config.opts?
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
}

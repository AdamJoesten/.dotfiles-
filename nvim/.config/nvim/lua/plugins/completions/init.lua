return {
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "2.x.x", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		--build = "make install_jsregexp"
		dependencies = {
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		version = false, -- last release is way too old
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			-- "hrsh7th/cmp-cmdline",
			-- "hrsh7th/cmp-omni",
			"saadparwaiz1/cmp_luasnip",
		},
	},
}

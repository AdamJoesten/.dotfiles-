return {
	{
		"nvim-treesitter/nvim-treesitter",
		version = false, -- latest release is very old
		build = ":TSUpdate",
		event = { "VeryLazy" },
		cmd = { "TSUpdate", "TSInstall" },
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
	},
}

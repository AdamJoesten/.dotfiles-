return {
	"neovim/nvim-lspconfig",
	opts = {
		diagnostics = {
			underline = true,
			update_in_insert = false,
			virtual_text = {
				spacing = 4,
				source = "if_many",
				prefix = "icons",
			},
			severity_sort = true,
		},
		inlay_hints = {
			enabled = true,
		},
		capabilities = {},
		format = {
			formatting_options = nil,
			timeout_ms = nil,
		},
		servers = {},
		setup = {},
	},
	config = function()
		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"marksman",
				-- "rust_analyzer",
				-- "dockerls",
				-- "gopls",
				-- "html",
				-- "jsonls",
				-- "jqls",
				-- "tsserver",
				-- "awk_ls",
				-- "bashls",
				-- "cssls",
				-- "htmx",
			},
		})
		require("neoconf").setup({})
		require("neodev").setup({})
		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						workspace = {
							checkThirdParty = false,
						},
						completion = {
							callSnippet = "Replace",
						},
					},
				}
		})
		lspconfig.marksman.setup({})
		-- lspconfig.rust_analyzer.setup({})
	end,
	dependencies = {
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig" },
		{ "folke/neoconf.nvim" },
		{ "folke/neodev.nvim" },
		{ "j-hui/fidget.nvim", opts = {} },
	},
}

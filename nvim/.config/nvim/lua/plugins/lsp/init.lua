local fidget = require("plugins.lsp.fidget")
local mason = require("plugins.lsp.mason")
local mason_lspconfig = require("plugins.lsp.mason-lspconfig")
local neodev = require("plugins.lsp.neodev")
local nvim_lspconfig = require("plugins.lsp.nvim-lspconfig")

return { mason, mason_lspconfig, fidget, nvim_lspconfig, neodev }

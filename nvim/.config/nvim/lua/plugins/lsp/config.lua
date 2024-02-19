return function()
  require("neodev").setup()
  local lspconfig = require("lspconfig")
  local mason_lspconfig = require("mason-lspconfig")

  local lsp_conf = require("plugins.lsp.settings")

  local servers = {
    -- tailwincss = {},
    jsonls = lsp_conf.json,
    lua_ls = lsp_conf.lua,
    marksman = lsp_conf.md,
    tsserver = lsp_conf.ts,
  }

  mason_lspconfig.setup({
    ensure_installed = vim.tbl_keys(servers),
  })

  mason_lspconfig.setup_handlers({
    function(server_name)
      lspconfig[server_name].setup({
        on_attach = lsp_conf.on_attach,
        capabilities = lsp_conf.capabilities,
        settings = servers[server_name],
        filetypes = (servers[server_name] or {}).filetypes,
      })
    end,
  })

  require("plugins.lsp.handlers").setup()
end


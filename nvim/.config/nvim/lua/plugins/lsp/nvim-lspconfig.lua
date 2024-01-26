return {
  "neovim/nvim-lspconfig",
  keys = {
    {
      "<leader>e",
      vim.diagnostic.open_float,
      desc = "Open diagnostics window",
    },
    { "<leader>[d", vim.diagnostic.goto_prev },
    { "<leader>]d", vim.diagnostic.goto_next },
    { "<leader>q", vim.diagnostic.setloclist },
  },
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
    -- inlay_hints = {
    -- 	enabled = true,
    -- },
    format = {
      formatting_options = nil,
      timeout_ms = nil,
    },
  },
  config = function()
    require("mason").setup({})
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls", -- NOTE: setup handled by neodev.nvim
        "jsonls", -- NOTE: setup handled by neodev.nvim
        "marksman",
        "rust_analyzer",
        "dockerls",
        "gopls",
        "html",
        -- "jqls",
        "tsserver",
        -- "awk_ls",
        "bashls",
        "cssls",
        -- "htmx",
      },
    })

    -- require("neoconf").setup({})
    require("neodev").setup({})

    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          workspace = {
            checkThirdParty = false,
          },
          completion = {
            callSnippet = "Both",
            keywordSnippet = "Both",
            displayContext = 5,
          },
          hint = {
            enable = true,
          },
        },
      },
    })
    lspconfig.marksman.setup({})
    lspconfig.jsonls.setup({})
  end,
  dependencies = {
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig" },
    -- { "folke/neoconf.nvim" },
    { "folke/neodev.nvim" },
    { "j-hui/fidget.nvim" },
  },
}

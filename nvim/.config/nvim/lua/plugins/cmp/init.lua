if true then
  return {}
end

return {
  "hrsh7th/nvim-cmp", -- autocompletion
  dependencies = {
    "L3MON4D3/LuaSnip", -- snippet engine & its associated nvim-cmp source
    "saadparwaiz1/cmp_luasnip",

    -- Adds LSP completion capabilities
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-path",

    -- Adds a number of user-friendly snippets
    "rafamadriz/friendly-snippets",

    -- vs-code like pictograms
    "onsails/lspkind.nvim",
  },
}

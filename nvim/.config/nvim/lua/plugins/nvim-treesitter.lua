return {
  {
    "nvim-treesitter/nvim-treesitter",
    -- event = "VeryLazy",
    build = ":TSUpdate", -- install `ensure_installed` on install or update
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function()
      local treesitter = require("nvim-treesitter.configs")

      treesitter.setup({
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = "<C-s>",
            node_decremental = "<C-bs>",
          },
        },
        ensure_installed = {
          --"awk",
          --"bash",
          --"css",
          --"diff",
          --"dockerfile",
          --"fish",
          --"go",
          --"gomod",
          --"graphql",
          --"html",
          --"hurl",
          "javascript",
          --"jq",
          "jsdoc",
          "json",
          "lua",
          --"luadoc",
          --"luap",
          "markdown",
          "markdown_inline",
          --"python",
          --"query",
          --"racket",
          --"regex",
          --"rust",
          --"scss",
          --"sql",
          --"toml",
          "tsx",
          "typescript",
          "vim",
          "vimdoc",
          --"yaml",
        },
      })
    end,
  },
}

return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    {
      "<leader>cl",
      function()
        require("lint").try_lint()
      end,
      desc = "Lint buffer",
    },
  },
  config = function()
    require("lint").linters_by_ft = {
      lua = { "luacheck" },
      markdown = { "markdownlint" },
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescriptreact = { "eslint_d" },
    }
    -- local luacheck = require("lint").linters.luacheck
    -- luacheck.args = {
    --   "--max-line-length 80",
    --   "--max-code-line-length 80",
    --   "--max-string-line-length 80",
    --   "--max-comment-line-length 80",
    -- }
  end,
}

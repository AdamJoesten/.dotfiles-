-- if true then
--   return {}
-- end
return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      -- mode = "",
      mode = { "n", "v" },
      desc = "Format file or range (in visual mode)",
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      markdown = { "markdownlint" },
      -- python = { "isort", "black" }, -- NOTE: not sure what is going on with these two
      javascript = { "prettierd" },
      typescript = { "prettierd" },
    },
    formatters = {
      -- injected = {
      --   options = {
      --     lang_to_ext = {
      --       -- bash = "sh",
      --       -- c_sharp = "cs",
      --       -- elixir = "exs",
      --       lua = "lua",
      --       javascript = "js",
      --       -- julia = "jl",
      --       -- latex = "tex",
      --       markdown = "md",
      --       -- python = "py",
      --       -- ruby = "rb",
      --       rust = "rs",
      --       -- teal = "tl",
      --       typescript = "ts",
      --     },
      --   },
      -- },
    },
    format_on_save = { timeout_ms = 500, lsp_fallback = true },
    -- customize formatters
    -- formatters = {
    --   shfmt = {
    --     prepend_args = { "-i", "2" },
    --   },
    -- },
  },
  init = function()
    -- if you want the formatexpr, here is the place to set it
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}

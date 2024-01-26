return {
  "WhoIsSethDaniel/mason-tool-installer",
  config = function()
    require("mason-tool-installer").setup({
      ensure_installed = {
        "stylua",
        "luacheck",
        "markdownlint",
        "vale",
        "prettierd",
        "eslint_d",
      },
    })
  end,
}

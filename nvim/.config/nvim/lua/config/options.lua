local opt = vim.opt

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

opt.autoindent = true
opt.breakindent = true
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 3 -- Hide * markup for bold and italic
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.cursorline = true -- Enable highlighting of the current line
opt.expandtab = true -- Use spaces instead of tabs
opt.fillchars = {
  foldopen = "",
  foldclose = "",
  -- fold = "⸱",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
opt.grepprg = "rg --vimgrep"
opt.formatoptions = "tcjqron" -- tcjq
opt.list = true
opt.termguicolors = true
opt.mouse = "a"
opt.number = true
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent
opt.smartindent = true
opt.smartcase = true

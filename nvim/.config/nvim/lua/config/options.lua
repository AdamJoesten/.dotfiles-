local opt = vim.opt

-- editor
opt.number = true     -- Add numbers in gutter
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.cursorline = true -- Hightlight current line
opt.confirm = true    -- Confirm to save changes before exiting modified buffer
opt.wrap = false
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

-- undo
opt.undofile = true

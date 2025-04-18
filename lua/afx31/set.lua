-- Fat cursor
--vim.opt.guicursor = ""

-- Line numbers
vim.opt.nu = true
--vim.opt.relativenumber = true

-- 4 space indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Line wrap
vim.opt.wrap = false

-- Search highlighting?
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- "Good colours"
vim.opt.termguicolors = true

-- To do with how many lines are at the bottom below cursor, at any given time
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Leader key
vim.g.mapleader = " "

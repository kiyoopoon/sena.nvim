require("sena.plugins")
require("sena.keybinds")

-- Vim.wo.number = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.wrap = true
vim.opt.linebreak = true

vim.opt.termguicolors = true
vim.cmd("set background=dark")
vim.cmd("colorscheme kanagawa")

vim.cmd("set clipboard=unnamedplus")

require("colorizer").setup()
require("ibl").setup()

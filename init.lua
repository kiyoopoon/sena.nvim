require("sena.plugins")
require("sena.keybinds")

-- vim.wo.number = true
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

vim.api.nvim_set_var("neo_tree_bufferline_spacing", 20)

vim.opt.termguicolors = true
vim.cmd('set background=dark')
vim.cmd('colorscheme kanagawa')

require('colorizer').setup()

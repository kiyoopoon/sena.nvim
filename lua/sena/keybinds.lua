vim.g.mapleader = ' '

-- Window focusing
vim.api.nvim_set_keymap('n', '<A-h>', '<C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-j>', '<C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-k>', '<C-w>k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-l>', '<C-w>l', {noremap = true, silent = true})

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fw', function()
    builtin.grep_string({search = vim.fn.input("Search: ")})
end)

-- Gitsigns keybinds are in the gitsigns.lua file.

-- Nvimtree
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>f', ':NvimTreeFocus<CR>',
                        {noremap = true, silent = true})

-- Bufferline
vim.api.nvim_set_keymap('n', '<A-S-Tab>', ':BufferLineMovePrev<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-Tab>', ':BufferLineMoveNext<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Tab>', ':bnext<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-S-Tab>', ':bprev<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>c', ':bdelete<CR>',
                        {noremap = true, silent = true})

-- Undotree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- Comment
local comment = require('Comment')
comment.setup {
    toggler = {line = '<leader>cc', block = '<leader>cu'},
    opleader = {line = '<leader>cc', block = '<leader>cu'}
}

-- Color Picker
vim.keymap.set("n", "<leader>w", "<cmd>PickColor<cr>", opts)
vim.keymap.set("i", "<c-`>", "<cmd>PickColorInsert<cr>", opts)

vim.g.mapleader = " "

-- Window focusing
vim.api.nvim_set_keymap("n", "<A-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-l>", "<C-w>l", { noremap = true, silent = true })

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
vim.keymap.set("n", "<leader>fw", function()
    builtin.grep_string({ search = vim.fn.input("Search: ") })
end)

-- LSP keybinds are in the lsp_config.lua file.
-- Gitsigns keybinds are in the gitsigns.lua file.

-- Out of the world shortcuts from the great timeprimeagen's configs
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Nvimtree
vim.api.nvim_set_keymap("n", "<A-f>", "<cmd>Neotree focus<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-e>", "<cmd>Neotree toggle<cr>", { noremap = true, silent = true })

-- Bufferline
vim.api.nvim_set_keymap("n", "<A-S-Tab>", ":BufferMovePrevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-Tab>", ":BufferMoveNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-n>", ":BufferNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-p>", ":BufferPrevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>c", ":BufferClose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-p>", ":BufferPin<CR>", { noremap = true, silent = true })

-- Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Comment
local comment = require("Comment")
comment.setup({
    toggler = { line = "<leader>cc", block = "<leader>cu" },
    opleader = { line = "<leader>cc", block = "<leader>cu" },
})

-- Color Picker
vim.keymap.set("n", "<leader>w", "<cmd>PickColor<cr>")
vim.keymap.set("i", "<c-`>", "<cmd>PickColorInsert<cr>")

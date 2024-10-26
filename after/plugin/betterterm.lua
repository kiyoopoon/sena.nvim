local betterTerm = require("betterTerm")
vim.keymap.set({ "n", "t" }, "<C-;>", betterTerm.open, { desc = "Open terminal" })
vim.keymap.set({ "n" }, "<leader>tt", betterTerm.select, { desc = "Select terminal" })
local current = 2
vim.keymap.set({ "n" }, "<leader>tn", function()
    betterTerm.open(current)
    current = current + 1
end, { desc = "New terminal" })

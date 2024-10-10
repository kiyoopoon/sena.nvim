require("window-picker").setup({
    filter_rules = {
        include_current_win = false,
        autoselect_one = true,
        bo = {
            filetype = { "neo-tree", "neo-tree-popup", "notify" },
            buftype = { "terminal", "quickfix" },
        },
    },
})

vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

require("neo-tree").setup({
    window = {
        position = "left",
        width = 31,
    },

    follow_current_file = {
        enabled = false,
        leave_dirs_open = true,
    },
})
vim.cmd([[nnoremap \ :Neotree toggle<cr>]])

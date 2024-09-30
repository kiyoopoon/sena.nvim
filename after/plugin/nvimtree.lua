require("nvim-tree").setup({
    sort = {sorter = "case_sensitive"},
    view = {width = 26},
    renderer = {group_empty = true},
    filters = {dotfiles = true},

    diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {hint = "i", info = "!", warning = "!", error = "x"}
    }
})

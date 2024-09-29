require("bufferline").setup {
    options = {
        numbers = "none",
        diagnostics = "nvim_lsp",
        show_buffer_close_icons = false,
        show_close_icon = false,
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true
            }
        },
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match("error") and "x " or "!"
            -- Yes, I love x and ! instead of nerdfont icons. You can change them if you want.
            return " " .. icon .. count
        end
    }
}

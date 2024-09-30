require("bufferline").setup {
    options = {
        numbers = "ordinal",
        unique_names = ":",
        diagnostics = "nvim_lsp",
        show_buffer_close_icons = true,
        show_close_icon = true,
        separator_style = "slope",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "left",
                highlight = "Directory",
                separator = true,
            }
        },
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match("error") and "x " or "!"
            -- Yes, I love x and ! instead of nerdfont icons. You can change them if you want.
            return " " .. icon .. count
        end
    }
}

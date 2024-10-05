local carbon = require("carbon-now")
carbon.setup({
    base_url = "https://carbon.now.sh/",
    options = {
        bg = "gray",
        drop_shadow_blur = "68px",
        drop_shadow = false,
        drop_shadow_offset_y = "20px",
        font_family = "JetBrains Mono",
        font_size = "18px",
        line_height = "133%",
        line_numbers = true,
        theme = "base16-dark",
        -- Give credits cause why not?
        titlebar = "Made with carbon-now.nvim",
        watermark = false,
        width = "680",
        window_theme = "none",
        padding_horizontal = "0px",
        padding_vertical = "0px",
    },
})

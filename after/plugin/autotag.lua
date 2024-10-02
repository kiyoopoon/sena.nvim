require('nvim-ts-autotag').setup({
    opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = false
    },

    per_filetype = { ["html"] = { enable_close = false } }
})

-- Autopair
-- local cmp_autopairs = require('nvim-autopairs.completion.cmp')
-- local cmp = require('cmp')

-- cmp.event:on(
--     'confirm_done',
--     cmp_autopairs.on_confirm_done()
-- )

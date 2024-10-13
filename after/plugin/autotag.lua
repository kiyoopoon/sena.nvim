-- Autopairs setup
require("nvim-autopairs").setup({
    check_ts = true,
})

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

require("nvim-ts-autotag").setup({
    filetypes = { "html", "xml", "javascript", "javascriptreact", "typescript", "typescript.tsx" },
})

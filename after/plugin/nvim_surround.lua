local M = {}

M.default_opts = {
    keymaps = {
        insert = "<C-g>s",
        normal = "ys",
        visual = "S",
        delete = "ds",
        change = "cs",
    },
    surrounds = {
        ["("] = { add = { "( ", " )" }, find = "a(", delete = "^(.?)().-(?.)()$" },
        [")"] = { add = { "(", ")" }, find = "a)", delete = "^(.)().-(.)()$" },
        ["{"] = { add = { "{ ", " }" }, find = "a{", delete = "^(.?)().-(?.)()$" },
        ["}"] = { add = { "{", "}" }, find = "a}", delete = "^(.)().-(.)()$" },
        ["["] = { add = { "[ ", " ]" }, find = "a[", delete = "^(.?)().-(?.)()$" },
        ["]"] = { add = { "[", "]" }, find = "a]", delete = "^(.)().-(.)()$" },
        ['"'] = { add = { '"', '"' }, find = 'a"', delete = "^(.)().-(.)()$" },
        ["'"] = { add = { "'", "'" }, find = "a'", delete = "^(.)().-(.)()$" },
        ["`"] = { add = { "`", "`" }, find = "a`", delete = "^(.)().-(.)()$" },
    },
    aliases = {
        ["a"] = ">",
        ["b"] = ")",
        ["B"] = "}",
        ["r"] = "]",
        ["q"] = { '"', "'", "`" },
        ["s"] = { "}", "]", ")", ">", '"', "'", "`" },
    },
}

M.get_opts = function()
    return vim.b[0].nvim_surround_buffer_opts or M.user_opts or {}
end

M.set_keymaps = function(args)
    local opts = M.get_opts()
    vim.keymap.set("i", opts.keymaps.insert, "<Plug>(nvim-surround-insert)", { buffer = args.buffer })
    vim.keymap.set("n", opts.keymaps.normal, "<Plug>(nvim-surround-normal)", { buffer = args.buffer })
    vim.keymap.set("x", opts.keymaps.visual, "<Plug>(nvim-surround-visual)", { buffer = args.buffer })
    vim.keymap.set("n", opts.keymaps.delete, "<Plug>(nvim-surround-delete)", { buffer = args.buffer })
    vim.keymap.set("n", opts.keymaps.change, "<Plug>(nvim-surround-change)", { buffer = args.buffer })
end

M.setup = function(user_opts)
    M.user_opts = vim.tbl_deep_extend("force", M.default_opts, user_opts or {})
    M.set_keymaps({ buffer = false })
end

return M

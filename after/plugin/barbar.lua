vim.g.barbar_auto_setup = false
require 'barbar'.setup {
    animation = true,
    auto_hide = false,
    tabpages = true,
    clickable = true,
    focus_on_close = 'left',

    highlight_alternate = false,
    highlight_inactive_file_icons = false,
    highlight_visible = true,

    icons = {
        buffer_index = true,
        buffer_number = false,
        button = '',
        diagnostics = {
            [vim.diagnostic.severity.ERROR] = { enabled = true, icon = 'ﬀ' },
            [vim.diagnostic.severity.WARN] = { enabled = true },
            [vim.diagnostic.severity.INFO] = { enabled = true },
            [vim.diagnostic.severity.HINT] = { enabled = true },
        },
        gitsigns = {
            added = { enabled = true, icon = '+' },
            changed = { enabled = true, icon = '~' },
            deleted = { enabled = true, icon = '-' },
        },
        filetype = {
            custom_colors = false,
            enabled = true,
        },

        separator = { left = '|', right = '' },
        separator_at_end = true,

        modified = { button = '●' },
        pinned = { button = '', filename = true },

        preset = 'default',

        alternate = { filetype = { enabled = false } },
        current = { buffer_index = true },
        inactive = { button = '×' },
        visible = { modified = { buffer_number = false } },
    },

    maximum_length = 30,
    minimum_length = 0,

    semantic_letters = true,

    sidebar_filetypes = {
        NvimTree = true,
        undotree = {
            text = 'undotree',
            align = 'center',
        },
        ['neo-tree'] = { event = 'BufWipeout', text = 'Neotree', align = 'left' },
        Outline = { event = 'BufWinLeave', text = 'symbols-outline', align = 'right' },
    },

    letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
    no_name_title = nil,

    sort = {
        ignore_case = true,
    },
}

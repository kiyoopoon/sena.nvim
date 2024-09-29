require'nvim-treesitter.configs'.setup {
ensure_installed = { "python", "html", "css", "javascript", "rust", "c", "lua", "markdown", "markdown_inline" },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}

local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.completion.spell,
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.isort,
		require("none-ls.diagnostics.eslint"),
	},

	vim.keymap.set("n", "<leader>df", vim.lsp.buf.format, {}),
})
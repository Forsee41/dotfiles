return {
    "nvimtools/none-ls.nvim",
    config = function()
        null_ls = require("null-ls")

		null_ls.setup({
		debug = false,
		sources = {
			null_ls.builtins.formatting.prettier.with({
				-- extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
				prefer_local = "node_modules/.bin",
			}),
			null_ls.builtins.formatting.black.with({ extra_args = { "--fast" } }),
			null_ls.builtins.formatting.stylua,
			-- null_ls.builtins.diagnostics.flake8.with({
			-- 	prefer_local = ".venv/bin",
			-- 	extra_args = { "--max-line-length", "88", "--ignore", "E203, W503, ANN101" },
			-- }),
			null_ls.builtins.diagnostics.mypy,
			-- null_ls.builtins.diagnostics.golangci_lint
		},
	})
    end,
}

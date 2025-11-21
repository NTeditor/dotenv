return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	keys = {
		{
			"<leader>f",
			function()
				local buf = vim.api.nvim_get_current_buf()
				require("conform").format({ bufnr = buf })
			end,
			desc = "Format currect buf",
		},
	},
	opts = {
		default_format_opts = {
			lsp_format = "fallback",
			async = false,
			timeout_ms = 1,
		},
		formatters_by_ft = {
			lua = { "stylua" },
			rust = { "rustfmt" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			json = { "prettier" },
			python = { "black" },
		},
		format_on_save = {
			lsp_format = "fallback",
			timeout_ms = 500,
		},
	},
}

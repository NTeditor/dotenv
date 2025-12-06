return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format()
			end,
			desc = "Format currect buf",
		},
	},
	opts = {
		default_format_opts = {
			lsp_format = "fallback",
			async = false,
			timeout_ms = 3000,
		},
		formatters_by_ft = {
			lua = { "stylua" },
			rust = { "rustfmt" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			json = { "prettier" },
			python = { "black" },
			go = { "gofmt" },
		},
		format_on_save = {
			lsp_format = "fallback",
			timeout_ms = 5000,
		},
	},
}

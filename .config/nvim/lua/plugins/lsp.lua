return {
	"neovim/nvim-lspconfig",
	event = "VeryLazy",
	keys = {
		{
			"<leader>lr",
			vim.lsp.buf.rename,
			{ desc = "LSP Rename" },
		},
	},
	config = function()
		vim.lsp.enable({ "lua_ls", "rust_analyzer", "pyright", "vtsls", "gopls", "nushell" })

		vim.diagnostic.config({
			float = false,
			virtual_text = false,
			underline = false,
			update_in_insert = false,
			severity_sort = false,
			signs = true,
		})
	end,
}

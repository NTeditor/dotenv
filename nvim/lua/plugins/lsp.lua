return {
	"neovim/nvim-lspconfig",
	event = "VeryLazy",
	keys = {
		{
			"<leader>r",
			function()
				vim.lsp.buf.rename()
			end,
			{ desc = "LSP Rename" },
		},
	},
	config = function()
		vim.lsp.enable({ "lua_ls", "rust_analyzer", "pyright", "vtsls" })

		vim.diagnostic.config({
			float = true,
			virtual_text = true,
			signs = false,
			underline = true,
			update_in_insert = true,
			severity_sort = true,
		})
	end,
}

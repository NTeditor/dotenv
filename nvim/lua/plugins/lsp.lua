return {
	"neovim/nvim-lspconfig",
	event = "VeryLazy",
	config = function()
		vim.lsp.enable({ "lua_ls", "rust", "pyright" })

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

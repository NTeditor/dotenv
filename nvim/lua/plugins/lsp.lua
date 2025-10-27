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
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					workspace = {
						checkThirdParty = false,
						library = vim.tbl_deep_extend("force", vim.api.nvim_get_runtime_file("", true), {
							"${3rd}/luv/library",
							"${3rd}/busted/library",
							"/usr/share/awesome/lib",
							"/usr/share/lua",
						}),
					},
					diagnostics = {
						globals = {
							"awesome",
							"awful",
							"client",
							"screen",
							"tag",
							"root",
							"terminal",
							"editor",
							"editor_cmd",
							"modkey",
							"mymainmenu",
							"mylauncher",
						},
					},
					runtime = { version = "LuaJIT" },
					completion = { callSnippet = "Replace" },
					telemetry = { enable = false },
				},
			},
		})

		vim.lsp.enable({ "lua_ls", "rust_analyzer", "pyright" })

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

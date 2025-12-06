return {
	"nvim-telescope/telescope.nvim",
	tag = "v0.1.9",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"<leader>td",
			function()
				require("telescope.builtin").diagnostics()
			end,
			{ dest = "Telescope diagnostics" },
		},
		{
			"<leader>tg",
			function()
				require("telescope.builtin").live_grep()
			end,
			{ dest = "Telescope live grep" },
		},
		{
			"<leader>tf",
			function()
				require("telescope.builtin").find_files()
			end,
			{ dest = "Telescope find files" },
		},
		{
			"<leader>tb",
			function()
				require("telescope.builtin").buffers()
			end,
			{ dest = "Telescope buffers" },
		},
	},
}

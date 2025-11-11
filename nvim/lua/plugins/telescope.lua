return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"<leader>td",
			require("telescope.builtin").diagnostics,
			{ dest = "Telescope diagnostics" },
		},
		{
			"<leader>tg",
			require("telescope.builtin").live_grep,
			{ dest = "Telescope live grep" },
		},
		{
			"<leader>tf",
			require("telescope.builtin").find_files,
			{ dest = "Telescope find files" },
		},
		{
			"<leader>tb",
			require("telescope.builtin").buffers,
			{ dest = "Telescope buffers" },
		},
	},
}

return {
	"akinsho/bufferline.nvim",
	version = "*",
	event = "VeryLazy",
	dependencies = "nvim-tree/nvim-web-devicons",
	keys = {
		{ "<leader>bl", "<cmd>bn<cr>", desc = "Buffer next" },
		{ "<leader>bh", "<cmd>bp<cr>", desc = "Buffer previous" },
		{ "<leader>bd", "<cmd>bd<cr>", desc = "Buffer delete" },
	},
	opts = {},
}

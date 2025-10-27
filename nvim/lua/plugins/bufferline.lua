return {
	"akinsho/bufferline.nvim",
	version = "*",
	event = "VeryLazy",
	dependencies = "nvim-tree/nvim-web-devicons",
	keys = {
		{ "L", "<cmd>bn<cr>", desc = "Buffer next" },
		{ "H", "<cmd>bp<cr>", desc = "Buffer previous" },
		{ "BD", "<cmd>bd<cr>", desc = "Buffer delete" },
	},
	opts = {},
}

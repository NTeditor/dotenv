return {
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			contrast = "hard",
			italic = {
				strings = false,
				emphasis = false,
				comments = false,
				operators = false,
				folds = false,
			},
		},
		config = function()
			vim.cmd("colorscheme gruvbox")
		end,
	},
	{
		"folke/tokyonight.nvim",
		enabled = false,
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			vim.cmd("colorscheme tokyonight-storm")
		end,
	},
}

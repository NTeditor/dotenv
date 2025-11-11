return {
	{
		"ellisonleao/gruvbox.nvim",
		enabled = false,
		opts = {
			contrast = "hard",
			italic = {
				strings = false,
				emphasis = true,
				comments = true,
				operators = false,
				folds = true,
			},
		},
		config = function()
			vim.cmd("colorscheme gruvbox")
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			vim.cmd("colorscheme tokyonight-storm")
		end,
	},
}

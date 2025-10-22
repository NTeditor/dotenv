return {
	{
		"ellisonleao/gruvbox.nvim",
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
}

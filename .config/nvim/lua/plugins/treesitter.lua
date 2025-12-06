return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	opts = {
		ensure_installed = { "c", "lua", "rust", "go", "bash", "sh", "markdown", "markdown_inline", "nu" },
		auto_install = true,
		sync_install = true,
		highlight = {
			enable = true,
		},
	},
}

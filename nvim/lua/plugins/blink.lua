return {
	"Saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	event = { "InsertEnter", "CmdlineEnter" },
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = {
			preset = "enter",
		},
		appearance = {
			nerd_font_variant = "normal",
		},
		sources = {
			default = { "lsp", "path", "snippets" },
		},
		cmdline = {
			enabled = true,
			keymap = {
				preset = "enter",
				["<Tab>"] = { "show_and_insert_or_accept_single", "select_next" },
				["<S-Tab>"] = { "show_and_insert_or_accept_single", "select_prev" },
			},
		},
		signature = { enabled = true },
		completion = {
			documentation = {
				auto_show = true,
				window = {
					border = "rounded",
				},
			},
			menu = {
				auto_show = true,
				border = "rounded",
			},
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}

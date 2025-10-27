return {
	"Saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	event = { "InsertEnter", "CmdlineEnter" },
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = {
			preset = "none",
			["<Tab>"] = { "select_next", "fallback" },
			["<S-Tab>"] = { "select_prev", "fallback" },
			["<C-J>"] = { "select_next", "fallback" },
			["<C-K>"] = { "select_prev", "fallback" },

			["<C-l>"] = { "scroll_documentation_down", "fallback" },
			["<C-h>"] = { "scroll_documentation_up", "fallback" },

			["<C-space>"] = { "show", "hide", "fallback" },
			["<CR>"] = { "accept", "fallback" },
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
				preset = "none",
				["<Tab>"] = { "show", "select_next", "fallback" },
				["<S-Tab>"] = { "select_prev", "fallback" },
				["<C-J>"] = { "select_next", "fallback" },
				["<C-K>"] = { "select_prev", "fallback" },

				["<C-l>"] = { "scroll_documentation_down", "fallback" },
				["<C-h>"] = { "scroll_documentation_up", "fallback" },

				["<C-space>"] = { "show", "hide", "fallback" },
				["<CR>"] = { "accept", "fallback" },
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
				auto_show = false,
				border = "rounded",
				draw = {
					columns = {
						{ "label" },
						{ "kind", "source_name", gap = 5 },
					},
				},
			},
			ghost_text = {
				enabled = false,
			},
		},
	},
}

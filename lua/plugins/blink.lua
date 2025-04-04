return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets", "onsails/lspkind.nvim" },
	version = "1.*",
	opts = {
		keymap = { preset = "default", ["<CR>"] = { "accept", "fallback" } },

		appearance = {
			nerd_font_variant = "mono",
		},

		completion = {
			documentation = {
				auto_show = true,
				treesitter_highlighting = true,
			},
			keyword = {
				range = "prefix",
			},
			list = {
				selection = {
					preselect = false,
					auto_insert = true,
				},
			},
			accept = {
				dot_repeat = false,
				create_undo_point = true,
				auto_brackets = {
					enabled = true,
				},
			},
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			providers = {
				path = {
					enabled = true,
				},
				buffer = {
					enabled = true,
				},
				snippets = {
					enabled = true,
				},
				lsp = {
					enabled = true,
				},
			},
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
}

return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
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
			menu = {
				draw = {
					columns = { { "label", "label_detail", gap = 1 }, { "kind" } },
					components = {
						label = {
							width = { max = 30, fill = true },
							text = function(ctx)
								return ctx.label
							end,
						},
						label_detail = {
							width = { fill = true, max = 15 },
							text = function(ctx)
								return ctx.label_detail
							end,
						},
						source_name = {},
					},
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

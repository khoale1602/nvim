return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			defaults = {
				file_ignore_patterns = {
					"%.jpg",
					"%.jpeg",
					"%.png",
					"%.otf",
					"%.ttf",
					"node_modules",
				},
				prompt_prefix = "  ",
				selection_caret = "  ",
				entry_prefix = "  ",
				layout_strategy = "flex",
				layout_config = {
					horizontal = {
						preview_width = 0.6,
					},
				},
				border = {},
				borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
				-- borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
				-- borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
			},
		})
		vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
		vim.keymap.set("n", "<leader>th", "<cmd>Telescope colorscheme<cr>")
	end,
}

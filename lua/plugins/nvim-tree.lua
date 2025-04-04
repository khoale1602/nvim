return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		view = {
			width = 30,
			side = "left",
		},
		disable_netrw = true,
		hijack_cursor = true,
		update_cwd = true,
		renderer = {
			root_folder_label = false,
			indent_markers = {
				enable = true,
			},
			icons = {
				webdev_colors = false,
				show = {
					file = false,
					folder = true,
					folder_arrow = false,
					git = true,
				},
			},
		},
		hijack_directories = {
			enable = true,
			auto_open = true,
		},
		git = {
			enable = true,
			ignore = false,
			timeout = 400,
		},
	},
	keys = {
		{ "<leader>e", "<cmd>NvimTreeToggle<cr>" },
	},
}

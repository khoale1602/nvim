return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	config = function()
		require("ibl").setup({
			indent = { char = "│" },
			exclude = {
				filetypes = {
					"help",
					"terminal",
					"dashboard",
					"packer",
					"TelescopePrompt",
					"TelescopeResults",
					"",
				},
				buftypes = { "terminal", "nofile" },
			},
			scope = { enabled = false },
		})
	end,
}

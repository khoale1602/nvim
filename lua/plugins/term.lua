return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function ()
		require"toggleterm".setup({
			shade_terminals = false,
		})
		vim.keymap.set("t", "<esc>", "<C-\\><C-n>", {remap = true})
		vim.keymap.set("n", "<leader>tm", "<cmd>ToggleTerm<cr>")
	end
}

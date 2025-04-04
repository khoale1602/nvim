g.mapleader = " "
g.maplocalleader = " "

opt.number = true
opt.wrap = false
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.showmode = false
opt.termguicolors = true

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false
opt.foldlevel = 99

local text_signs = {
	[vim.diagnostic.severity.ERROR] = "󰅚",
	[vim.diagnostic.severity.WARN] = "󰀪",
	[vim.diagnostic.severity.HINT] = "󰌶",
	[vim.diagnostic.severity.INFO] = " ",
}
local sign_hl = {
	[vim.diagnostic.severity.ERROR] = "DiagnosticSignError",
	[vim.diagnostic.severity.WARN] = "DiagnosticSignWarn",
	[vim.diagnostic.severity.HINT] = "DiagnosticSignHint",
	[vim.diagnostic.severity.INFO] = "DiagnosticSignInfo",
}

vim.diagnostic.config({
	float = {
		border = "none",
		scope = "l",
		focusable = false,
		style = "minimal",
		source = true,
		header = "",
		prefix = "",
		severity_sort = true,
	},
	underline = true,
	signs = {
		priority = 16,
		text = text_signs,
		numhl = sign_hl,
	},
	virtual_text = {
		prefix = "●",
		source = "if_many",
		hl_mode = "replace",
		virt_text_pos = "eol",
	},
	update_in_insert = false,
})

vim.keymap.set("n", "<leader>d", function()
	vim.diagnostic.open_float()
end)

local opt = vim.opt
local cmd = vim.cmd
local o = vim.o
local g = vim.g

o.number = true
o.wrap = false
o.swapfile = false
o.tabstop = 4
o.shiftwidth = 4

local map = vim.keymap.set

g.mapleader = " "
map("n", "<leader>o", ":w<cr> :so<cr>")
map("n", "<leader>rs", ":restart<cr>")

vim.pack.add({
	{
		src = "https://github.com/windwp/nvim-autopairs",
	},
	{
		src = "https://github.com/vague2k/vague.nvim",
	},
	{
		src = "https://github.com/neovim/nvim-lspconfig",
	},
	{
		src = "https://github.com/mason-org/mason.nvim",
	},
	{
		src = "https://github.com/mason-org/mason-lspconfig.nvim",
	},
	{
		src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	{
		src = "https://github.com/stevearc/conform.nvim",
	},
})

require("nvim-autopairs").setup({})

-- lsp
require("mason").setup()
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
	ensure_installed = {
		"lua_ls",
		"stylua",
		"pyright",
		"black",
		"isort",
	},
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = {
					"vim",
					"require",
				},
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
})

-- formatter
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- python = { "isort", "black" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})

map("n", "<leader>fm", function()
	require("conform").format()
end)
-- theme
cmd("colorscheme vague")
cmd([[hi statusline guibg=NONE]])

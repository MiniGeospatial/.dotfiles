vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" }
})

require("nvim-treesitter").setup({
	ensure_installed = { "lua", "python", "javascript", "typescript" },
	auto_install = true,
	highlight = {
		enable = true,
	},
})

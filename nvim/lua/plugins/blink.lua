vim.pack.add({
	{ src = "https://github.com/saghen/blink.cmp", version = "v1.10.2" },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
})

require("blink.cmp").setup({
	keymap = {
		preset = "enter",
		["<S-Tab>"] = { "select_prev", "fallback" },
		["<Tab>"] = { "select_next", "fallback" },
	},
	appearance = {
		nerd_font_variant = "Victor Mono",
	},
	completion = { documentation = { auto_show = true } },
	sources = {
		default = { "path", "lsp", "snippets", "buffer" },
	},
	fuzzy = {
		implementation = "rust",
		prebuilt_binaries = {
			force_version = "v1.4.1",
			download = true,
		},
	},
})

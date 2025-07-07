return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config

  opts = {
    keymap = {
      preset = 'enter',
      ['<S-Tab>'] = { 'select_prev', 'fallback' },
      ['<Tab>'] = { 'select_next', 'fallback' },
    },
    appearance = {
      nerd_font_variant = 'Victor Mono'
    },
    completion = { documentation = { auto_show = true } },
    sources = {
      default = { 'path', 'lsp', 'snippets', 'buffer' },
    },
    fuzzy = {
      implementation = "rust",
      prebuilt_binaries = {
        force_version = "v1.4.1",
        download = true,
      },
    },
  },
  opts_extend = { "sources.default" }
}

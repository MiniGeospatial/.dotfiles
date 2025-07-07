return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },

  opts = {
    keymap = { preset = 'super-tab' },
    appearance = {
      nerd_font_variant = 'Victor Mono'
    },
    completion = { documentation = { auto_show = true } },
    sources = {
      default = { 'path', 'lsp', 'snippets', 'buffer' },
    },
    fuzzy = { implementation = "lua" }
  },
  opts_extend = { "sources.default" }
}

return {
  'nvim-lualine/lualine.nvim',
  version = "*",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      theme = 'catppuccin',
      icons_enabled = true,
      component_separators = { left = '>', right = '<' },
      section_separators = { left = '', right = '' },
    },
  },
}

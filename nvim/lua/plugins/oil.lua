vim.pack.add({
  { src='https://github.com/stevearc/oil.nvim' },
})

require('oil').setup({
  columns = {
    "icon",
  },
  view_options = {
    show_hidden = true
  },
  float = {
    padding = 2,
  },
  watch_for_changes = true,
  keymaps = {
    ["q"] = "actions.close",
  },
  skip_confirm_for_simple_edits = true,
  preview_split = "below"
})

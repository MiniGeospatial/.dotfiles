require("smoji")

require("neogit").setup ({
  disable_insert_on_commit = true,
  graph_style = "unicode",
  kind = "floating",
  commit_editor = {
    kind = "floating",
    show_staged_diff = true,
    staged_diff_split_kind = "vsplit"
  }
})

vim.keymap.set("n", "<leader>ng", "<CMD>Neogit<CR>")
vim.keymap.set("n", "<leader><leader>e", "<CMD>Smoji<CR>")

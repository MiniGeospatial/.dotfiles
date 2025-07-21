return {
  "NeogitOrg/neogit",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    disable_insert_on_commit = true,
    graph_style = "unicode",
    kind = "floating",
    commit_editor = {
      kind = "floating",
      show_staged_diff = true,
      staged_diff_split_kind = "vsplit"
    },
  }
}

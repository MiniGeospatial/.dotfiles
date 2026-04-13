vim.pack.add ({
  { src = "https://github.com/NeogitOrg/neogit" },
  { src = "https://github.com/nvim-lua/plenary.nvim" }
})

require("neogit").setup({
  disable_insert_on_commit = true,
  graph_style = "unicode",
  kind = "floating",

  commit_editor = {
    kind = "floating",
    show_staged_diff = true,
    staged_diff_split_kind = "vsplit"
  },

})

--     "sindrets/diffview.nvim",
--     "nvim-telescope/telescope.nvim",

return {
  "nvim-treesitter/nvim-treesitter",
  version = "*",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "lua", "rust", "python", "javascript", "typescript" },
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}

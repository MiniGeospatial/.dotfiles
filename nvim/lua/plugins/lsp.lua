return {
  'neovim/nvim-lspconfig',
  version = "*",
  dependancies = {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
  config = function()
    require("lspconfig").lua_ls.setup {}
    require("lspconfig").ruff.setup {}
    require('lspconfig').pyright.setup {
      settings = {
        pyright = {
          disableOrganizeImports = true,
        },
        python = {
          analysis = {
            ignore = { '*' },
          },
        },
      },
    }
  end
}

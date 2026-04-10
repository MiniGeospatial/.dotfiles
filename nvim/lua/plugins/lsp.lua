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
    vim.lsp.enable("pyright",{
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
    })
    vim.lsp.enable("ruff")
    vim.lsp.enable("lua_ls")

  end
}

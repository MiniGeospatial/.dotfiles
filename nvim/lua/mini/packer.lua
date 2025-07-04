return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'tpope/vim-commentary'
  use {
    'NeogitOrg/neogit',
    requires = {
      'nvim-lua/plenary.nvim',
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim"
    }
  }
  -- use { 'echasnovski/mini.nvim', version = false }

  use 'nvim-tree/nvim-web-devicons'
  use 'tpope/vim-surround'
  use 'cohama/lexima.vim'
  use 'Vimjas/vim-python-pep8-indent'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'dense-analysis/ale'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { 
      'nvim-lua/plenary.nvim',
    }
  }

  use { 'lewis6991/gitsigns.nvim' }
  use {
    'nvim-treesitter/nvim-treesitter', 
    run = ':TSUpdate'
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},
      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    },
    branch = 'v4.x'
  }

  use {
    'mistricky/codesnap.nvim',
    build = 'make build_generator',
  }
  use "zakissimo/smoji.nvim"
  use({
    'MeanderingProgrammer/markdown.nvim',
    as = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
    after = { 'nvim-treesitter' },
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
    config = function()
        require('render-markdown').setup({})
    end,
  })
  use { "catppuccin/nvim", as = "catppuccin" }
  use { "stevearc/oil.nvim" }
end)

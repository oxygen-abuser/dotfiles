-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use 'mbbill/undotree'
  use('tpope/vim-fugitive')
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }

  }

  use {
    "phaazon/hop.nvim",
    branch = "v2",
    config = function()
      require("hop").setup()
      vim.keymap.set("n", "<Leader><Leader>w", "<Cmd>HopWord<CR>")
      vim.keymap.set("n", "<Leader><Leader>f", "<Cmd>HopWordAC<CR>")
      vim.keymap.set("n", "<Leader><Leader>b", "<Cmd>HopWordBC<CR>")
      vim.keymap.set("n", "<Leader><Leader>c", "<Cmd>HopChar1<CR>")
    end,
  }

  use {
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons'
  }

  use({
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!:).
    run = "make install_jsregexp"
  })

  use {
    requires = { "nvim-treesitter/nvim-treesitter" },
    "Badhi/nvim-treesitter-cpp-tools",
  }
  use {

    'Exafunction/codeium.vim',
    config = function()
      -- Change '<C-g>' here to any keycode you like.
    end
  }

  use 'puremourning/vimspector'

  use {
    'mrcjkb/haskell-tools.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    branch = '2.x.x', -- Recommended
    ft = { 'haskell', 'lhaskell', 'cabal', 'cabalproject' },
  }
end)

return require('packer').startup(function()

  -- packer can manage itself
  use 'wbthomason/packer.nvim'

  -- colorscheme plugins
  use "EdenEast/nightfox.nvim"

  -- file explorer plugins
  use "kyazdani42/nvim-web-devicons"
  -- use "kyazdani42/nvim-tree.lua"

  -- tpope plugins
  use 'tpope/vim-vinegar'
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'

  -- fuzzy search plugins
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  -- lsp plugins
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  -- use "williamboman/nvim-lsp-installer"
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip'
  use "rafamadriz/friendly-snippets"
  use 'nvim-treesitter/nvim-treesitter'

  -- gui plugins
  use 'nvim-lualine/lualine.nvim'
  -- use 'akinsho/bufferline.nvim'
    -- gui plugin for lss completion
  use 'onsails/lspkind.nvim'

  -- productivity plugins
  use 'windwp/nvim-autopairs'
end)

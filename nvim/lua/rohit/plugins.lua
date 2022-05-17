vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- ========== PERFORMANCE ==========
  use 'lewis6991/impatient.nvim' -- for caching
  use("nathom/filetype.nvim")

  -- ========== COLORSCHEME ===========
  use 'mhartington/oceanic-next'
  use 'EdenEast/nightfox.nvim'
  use 'rose-pine/neovim'
  use 'sainnhe/gruvbox-material'

  -- ========== IndentLines ==========
  use "lukas-reineke/indent-blankline.nvim"

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- nvimtree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    -- config = function() require'nvim-tree'.setup {} end
  }

  -- tpope/
  use { 'tpope/vim-fugitive', cmd="G" }
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-surround'
  use 'tpope/vim-rails'
  -- use 'tpope/vim-commentary'

  -- comment
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- vim gitgutter
  use 'airblade/vim-gitgutter'

  -- LSP
  use 'neovim/nvim-lspconfig'
  -- use 'glepnir/lspsaga.nvim'

  -- Autocompletion and luasnip
  use 'L3MON4D3/LuaSnip'
  use 'hrsh7th/nvim-cmp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'

  -- Snippets (requires above 'Authocompletion and luasnip')
  use "rafamadriz/friendly-snippets"
end)

-- LSP --
-- Install JS/TS language server - npm i -g typescript typescript-language-server
-- Install eslint language server - npm i -g vscode-langservers-extracted
-- Install Ruby language server - gem install --user-install solargraph
-- 
-- Server List - https://microsoft.github.io/language-server-protocol/implementors/servers/

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
  use({ "catppuccin/nvim", as = "catppuccin" })
  -- use 'mhartington/oceanic-next'
  -- use 'EdenEast/nightfox.nvim'
  -- use 'rose-pine/neovim'
  -- use 'sainnhe/gruvbox-material'

  -- ========== IndentLines ==========
  use {
    "lukas-reineke/indent-blankline.nvim",
    event="BufRead",
    config = function() require'rohit.indent_blankline' end
  }

  -- ========== MOTIONS -- LIGHTSPEED ==========
  use { 'ggandor/lightspeed.nvim', event="BufRead" }

  -- Post-install/update hook with neovim command
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- lualine
   --use {
   --  'feline-nvim/feline.nvim',
   --  config = function()
   --    require('feline').setup()
   --    require('feline').winbar.setup()
   --  end
   --}
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- nvimtree
  use {
    'kyazdani42/nvim-tree.lua',
    opt=true,
    cmd={"NvimTreeToggle", "NvimTreeOpen"},
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'rohit.nvimtree' end
  }

  -- nvim-dap Debugging
  use 'mfussenegger/nvim-dap'
  use 'rcarriga/nvim-dap-ui'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'nvim-telescope/telescope-dap.nvim'
  -- use 'Pocco81/DAPInstall.nvim'

  -- tpope/
  use { 'tpope/vim-fugitive', cmd="G" }
  use { 'tpope/vim-rhubarb', cmd="G blame" }
  use { 'tpope/vim-surround', event="BufRead" }
  use 'tpope/vim-rails'
  -- use 'tpope/vim-projectionist'


  -- comment
  use {
    'numToStr/Comment.nvim',
    event='BufRead',
    config = function()
      require('Comment').setup()
    end
  }
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- vim gitgutter
  -- use { 'airblade/vim-gitgutter', event="BufRead" }
  use {
    'lewis6991/gitsigns.nvim',
    -- event="BufRead"
  }

  -- LSP
  use { 'neovim/nvim-lspconfig',
    requires = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "jose-elias-alvarez/null-ls.nvim"
    }
  }
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
  
  -- Test Runner
  use {
    "nvim-neotest/neotest",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "haydenmeade/neotest-jest",
    },
    config = function()
      require('neotest').setup({
        adapters = {
          require('neotest-jest')({
            jestCommand = "npm run test:jest --"
            -- jestConfigFile = "custom.jest.config.ts",
          }),
        }
      })
    end
  }

  -- colorizer
  use { 
    'norcalli/nvim-colorizer.lua',
    event="BufRead",
    config = function()
      require('colorizer').setup()
    end
  }

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use {
    "windwp/nvim-ts-autotag",
    config = function() require("nvim-ts-autotag").setup {} end
  }
end)

-- LSP --
-- Install JS/TS language server - npm i -g typescript typescript-language-server
-- Install eslint language server - npm i -g vscode-langservers-extracted
-- Install Ruby language server - gem install --user-install solargraph
-- 
-- Server List - https://microsoft.github.io/language-server-protocol/implementors/servers/

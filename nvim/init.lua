require('impatient') -- load this plugin first
require('rohit.options')
require('rohit.options')
require('rohit.keymaps')
require('rohit.plugins')
require('rohit.cmp')
require('rohit.lsp')
require('rohit.treesitter')
require('rohit.telescope')
require('rohit.lualine')
require('rohit.nvimtree')
require('rohit.luasnip')

--========= LOOKOUT FOR UPDATES =========
-- Do not source the default filetype.vim
-- coming from https://github.com/nathom/filetype.nvim 
-- This feature is going to be default in upcoming neovim,
--  remove the plugin 'filetype.nvim' when that happens
vim.g.did_load_filetypes = 1

-- =============== INDENT LINE ==========
vim.g.indent_blankline_char = "¦"
require("indent_blankline").setup {}

-- =============== COLORSCHEME ==========
vim.cmd("colorscheme OceanicNext")


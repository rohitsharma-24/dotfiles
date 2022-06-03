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

-- =============== COLORSCHEME ==========
vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
vim.cmd[[colorscheme catppuccin]]

-- =============== INDENT LINE ==========
-- keep this in last to apply the highlight
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#636363 gui=nocombine]]

require("indent_blankline").setup {
  -- char = "¦",
  use_treesitter = true
  -- char_highlight_list = { "IndentBlanklineIndent1" }
}


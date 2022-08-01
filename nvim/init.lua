require('impatient') -- load this plugin first
require('rohit.options')
require('rohit.keymaps')
require('rohit.plugins')
require('rohit.cmp')
require('rohit.lsp')
require('rohit.telescope')
require('rohit.lualine')
require('rohit.luasnip')
require('rohit.treesitter')
require('rohit.comment')
require('rohit.gitsigns')
require('rohit.dbg')
require('rohit.dbg.node')

-- vim.cmd [[ command! Dotfiles execute ":lua require('rohit.custom.telescope').dotfiles()" ]]

-- ======= loaded in plugins files=======
-- require('rohit.nvimtree')
-- require('rohit.indent_blankline')

--========= LOOKOUT FOR UPDATES =========
-- Do not source the default filetype.vim
-- coming from https://github.com/nathom/filetype.nvim 
-- This feature is going to be default in upcoming neovim,
--  remove the plugin 'filetype.nvim' when that happens
vim.g.did_load_filetypes = 1

-- =============== COLORSCHEME ==========
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
vim.cmd [[colorscheme catppuccin]]

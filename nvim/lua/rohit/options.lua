local set = vim.opt
vim.g.mapleader = ' '
--
set.guicursor = ''                       -- make cursor block in insert mode
set.lazyredraw = true
set.splitbelow = true                       -- make cursor block in insert mode
set.splitright = true                       -- make cursor block in insert mode
set.updatetime = 100
set.termguicolors = true                      
set.signcolumn = "yes"                      
set.showmatch = true                     -- show matching
set.number = false                        -- add line numbers
set.relativenumber = false                -- show relative number
set.cursorline = false
set.cursorcolumn = false
set.ignorecase = true                    -- case insensitive
set.mouse = 'v'                            -- middle-click paste with
set.tabstop = 2                          -- number of columns occupied by a tab
set.softtabstop = 2                      -- see multiple spaces as tabstops so <BS> does the right thing
set.expandtab = true                     -- converts tabs to white space
set.shiftwidth = 2                       -- width for autoindents
-- set cc=125                            -- set an 80 column border for good coding style
set.clipboard ='unnamedplus'             -- using system clipboard
set.ttyfast = true                       -- Speed up scrolling in Vim
-- set.completeopt='menu,menuone,noselect'
-- folds --> check treesitter
set.foldlevel = 99
set.foldmethod = "expr"
set.foldexpr = "nvim_treesitter#foldexpr()"
set.linebreak = true

-- Disable some builtin vim plugins
local disabled_built_ins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "matchit",
  -- "matchparen", find alternative of this
  "tar",
  "tarPlugin",
  "rrhelper",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
}

for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end

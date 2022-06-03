local set = vim.opt
vim.g.mapleader = ' '
--
-- vim.g.netrw_banner = 0
-- vim.g.netrw_winsize = -28
-- vim.g.netrw_liststyle = 3
--
set.guicursor = ''                       -- make cursor block in insert mode
set.cursorline = true
set.splitbelow = true                       -- make cursor block in insert mode
set.splitright = true                       -- make cursor block in insert mode
set.updatetime = 100
set.termguicolors = true                      
set.signcolumn = "yes"                      
set.showmatch = true                     -- show matching
set.relativenumber = true                -- show relative number
set.ignorecase = true                    -- case insensitive
set.mouse = 'v'                            -- middle-click paste with
set.tabstop = 2                          -- number of columns occupied by a tab
set.softtabstop = 2                      -- see multiple spaces as tabstops so <BS> does the right thing
set.expandtab = true                     -- converts tabs to white space
set.shiftwidth = 2                       -- width for autoindents
set.number = true                        -- add line numbers
-- set cc=125                            -- set an 80 column border for good coding style
set.clipboard ='unnamedplus'             -- using system clipboard
set.ttyfast = true                       -- Speed up scrolling in Vim
-- set.completeopt='menu,menuone,noselect'
-- folds --> check treesitter
set.foldlevel = 99
set.foldmethod = "expr"
set.foldexpr = "nvim_treesitter#foldexpr()"
set.linebreak = true

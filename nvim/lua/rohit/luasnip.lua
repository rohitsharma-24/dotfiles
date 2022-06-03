--https://github.com/L3MON4D3/LuaSnip#add-snippets
--Vscode-like: To use existing vs-code style snippets from a plugin (eg. rafamadriz/friendly-snippets) simply install the plugin and then add
require("luasnip.loaders.from_vscode").lazy_load()
require'luasnip'.filetype_extend("ruby", {"rails"})
require'luasnip'.filetype_extend("javascript", {"javascriptreact"})

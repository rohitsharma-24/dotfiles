require'nvim-treesitter.configs'.setup {
  ensure_installed = {"javascript", "html", "css", "scss", "yaml", "dockerfile", "ruby", "lua", "tsx", "vim", "json"},
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {},  -- list of language that will be disabled
  },
  indent = {
    enable = true,
    disable = {}
  }
}

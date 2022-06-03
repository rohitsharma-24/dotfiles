-- =============== INDENT LINE ==========
-- keep this in last to apply the highlight i.e., after colorscheme
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#636363 gui=nocombine]]

require("indent_blankline").setup {
  -- char = "¦",
  use_treesitter = true
  -- char_highlight_list = { "IndentBlanklineIndent1" }
}


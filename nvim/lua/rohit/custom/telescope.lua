-- custom telescope command to access nvim folder
local M = {}

function M.dotfiles()
  require('telescope.builtin').git_files {
    shorten_path = true,
    cwd = "~/.config/nvim",
    prompt = '== Dotfiles =='
  }
end

return M

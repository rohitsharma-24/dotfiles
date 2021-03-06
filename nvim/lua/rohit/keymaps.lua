local telescope = require('telescope')
--
----- telescope-config.lua
-- if current dir is a git dir then <leader>ff(@line 13) will search git_files, else find_files
project_files = function()
  local opts = {shorten_path = true} -- define here if you want to define something
  local ok = pcall(require'telescope.builtin'.git_files, opts)
  if not ok then require'telescope.builtin'.find_files(opts) end
end

local set_map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
--set_map('n', '<leader>ff', ":lua require('telescope.builtin').git_files({shorten_path = true})<CR>", { noremap = true })
-- set_map('n', '<leader>ca', "<CMD>lua require('lspsaga.codeaction').code_action()<CR>", { noremap = true, silent = true })

-- file finder - mostly telescopic things
set_map('n', '<leader>ff', "<CMD>lua project_files()<CR>", opts)
set_map('n', '<leader>fg', ":lua require('telescope.builtin').live_grep()<CR>", opts)
set_map('n', '<leader>fs', ":lua require('telescope.builtin').grep_string()<CR>", opts)

set_map('n', '<tab>', ":bnext<CR>", opts)
set_map('n', '<s-tab>', ":bprevious<CR>", opts)
set_map('n', '<leader>w', ":bd<CR>", opts)
set_map('n', '<leader><C-w>', ":%bd|e#<CR>", opts)
set_map('n', '<leader><leader>', ":NvimTreeToggle<CR>", opts)
set_map('n', '<leader>a', ":%y<CR>", { noremap = false, silent = true })

-- window navigation
set_map('n', '<up>', "<C-w><up>", opts)
set_map('n', '<down>', "<C-w><down>", opts)
set_map('n', '<left>', "<C-w><left>", opts)
set_map('n', '<right>', "<C-w><right>", opts)

-- window resize
set_map('n', '<s-Up>', ":resize -2<CR>", opts)
set_map('n', '<s-Down>', ":resize +2<CR>", opts)
set_map('n', '<s-Left>', ":vertical resize -2<CR>", opts)
set_map('n', '<s-Right>', ":vertical resize +2<CR>", opts)

-- Visual
-- Indent
set_map('v', '<', "<gv", opts)
set_map('v', '>', ">gv", opts)


-- terminal 
set_map("n", "<leader>tv", [[<Cmd>vsp <bar>terminal<CR>]], { noremap = false, silent = true })
set_map("t", "<Del>", "<C-\\><C-n>", opts)
-- key_map("t", "<ESC>", "<C-\\><C-n>", { noremap = true, silent = true })
--nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
--nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

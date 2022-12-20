customTelescope = require('rohit.custom.telescope')
--
----- telescope-config.lua
-- if current dir is a git dir then <leader>ff(@line 13) will search git_files, else find_files
project_files = function()
  local options = {shorten_path = true} -- define here if you want to define something
  local ok = pcall(require'telescope.builtin'.git_files, options)
  if not ok then require'telescope.builtin'.find_files(options) end
end

local set_map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
--set_map('n', '<leader>ff', ":lua require('telescope.builtin').git_files({shorten_path = true})<CR>", { noremap = true })
-- set_map('n', '<leader>ca', "<CMD>lua require('lspsaga.codeaction').code_action()<CR>", { noremap = true, silent = true })

-- file finder - mostly telescopic things
set_map('n', '<leader>ff', "<CMD>lua project_files()<CR>", opts)
set_map('n', '<leader>fl', ":lua require('telescope.builtin').find_files()<CR>", opts)
set_map('n', '<leader>fg', ":lua require('telescope.builtin').live_grep()<CR>", opts)
set_map('n', '<leader>fs', ":lua require('telescope.builtin').grep_string()<CR>", opts)
set_map('n', '<leader>fS', ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('Search: ')})<CR>", opts)
set_map('n', '<leader>fD', ":lua require('telescope.builtin').live_grep({ search_dirs = { vim.fn.input('DIR: ') }})<CR>", opts)

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


set_map('n', '<C-d>', "<C-d>zz", opts)
set_map('n', '<C-u>', "<C-u>zz", opts)

-- window resize
set_map('n', '<s-Up>', ":resize -2<CR>", opts)
set_map('n', '<s-Down>', ":resize +2<CR>", opts)
set_map('n', '<s-Right>', ":vertical resize -2<CR>", opts)
set_map('n', '<s-Left>', ":vertical resize +2<CR>", opts)

-- Visual
-- Indent
set_map('v', '<', "<gv", opts)
set_map('v', '>', ">gv", opts)
set_map('v', '<C-j>', ":m '>+1<CR>gv=gv", opts)
set_map('v', '<C-k>', ":m '<-2<CR>gv=gv", opts)
set_map('x', '<leader>p', "\"_dP", opts)

-- Test runner - Neotest
set_map("n", "<leader>ss", ":lua require('neotest').run.run()<CR>", opts)
set_map("n", "<leader>sl", ":lua require('neotest').run.run_last()<CR>", opts)
set_map("n", "<leader>sf", ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>", opts)
set_map("n", "<leader>sc", ":lua require('neotest').run.stop()<CR>", opts)
set_map("n", "<leader>sO", ":lua require('neotest').output.open({ enter = true })<CR>", opts)
set_map("n", "<leader>so", ":lua require('neotest').output.open({ short = true })<CR>", opts)
set_map("n", "<leader>st", ":lua require('neotest').summary.toggle()<CR>", opts)


-- terminal 
set_map("n", "<leader>tv", [[<Cmd>vsp <bar>terminal<CR>i]], { noremap = false, silent = true })
set_map("n", "<leader>th", [[<Cmd>sp <bar>terminal<CR>i]], { noremap = false, silent = true })
set_map("t", "<Del>", "<C-\\><C-n>", opts)
set_map("t", "<ESC>", "<C-\\><C-n>G", { noremap = true, silent = true })
-- this G is added at the end, to have auto scroll behaviour when working on some other buffer
-- replace it wilth some other better solution if possible, like add moving cursor to end of 
-- buffer when moved from terminal buffer.

-- nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
--nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
--
--==========CUSTOM COMMANDS=============
vim.cmd [[ command! Dotfiles execute "lua customTelescope.dotfiles()" ]]

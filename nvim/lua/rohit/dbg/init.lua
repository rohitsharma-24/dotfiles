require('telescope').load_extension('dap')
local set_map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

set_map('n', '<leader>dc', '<cmd>lua require"dap".continue()<CR>', opts)
set_map('n', '<leader>dsv', '<cmd>lua require"dap".step_over()<CR>', opts)
set_map('n', '<leader>dsi', '<cmd>lua require"dap".step_into()<CR>', opts)
set_map('n', '<leader>dso', '<cmd>lua require"dap".step_out()<CR>', opts)
set_map('n', '<leader>db', '<cmd>lua require"dap".toggle_breakpoint()<CR>', opts)
set_map('n', '<leader>dB', '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', opts)

set_map('n', '<leader>dsc', '<cmd>lua require"dap.ui.variables".scopes()<CR>', opts)
set_map('n', '<leader>dhh', '<cmd>lua require"dap.ui.variables".hover()<CR>', opts)
set_map('v', '<leader>dhv', '<cmd>lua require"dap.ui.variables".visual_hover()<CR>', opts)

set_map('n', '<leader>duh', '<cmd>lua require"dap.ui.widgets".hover()<CR>', opts)
set_map('n', '<leader>duf', "<cmd>lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>", opts)

set_map('n', '<leader>dsbm', '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', opts)
set_map('n', '<leader>dro', '<cmd>lua require"dap".repl.open()<CR>', opts)
set_map('n', '<leader>drl', '<cmd>lua require"dap".repl.run_last()<CR>', opts)


-- telescope-dap
set_map('n', '<leader>dcc', '<cmd>lua require"telescope".extensions.dap.commands{}<CR>', opts)
set_map('n', '<leader>dco', '<cmd>lua require"telescope".extensions.dap.configurations{}<CR>', opts)
set_map('n', '<leader>dlb', '<cmd>lua require"telescope".extensions.dap.list_breakpoints{}<CR>', opts)
set_map('n', '<leader>dv', '<cmd>lua require"telescope".extensions.dap.variables{}<CR>', opts)
set_map('n', '<leader>df', '<cmd>lua require"telescope".extensions.dap.frames{}<CR>', opts)

-- nvim-dap-virtual-text. Show virtual text for current frame
vim.g.dap_virtual_text = true
-- nvim-dap-ui
require("dapui").setup()
-- nvim-dap-ui
set_map('n', '<leader>dui', '<cmd>lua require"dapui".toggle()<CR>', opts)

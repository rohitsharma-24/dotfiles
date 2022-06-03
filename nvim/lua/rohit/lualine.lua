require('lualine').setup{
    options = {
        theme = 'catppuccin',
        section_separators = '',
        component_separators = '',
    },
    sections = {
      lualine_a = {},
      lualine_b = {'branch', 'diff',
        {'diagnostics', sources={'nvim_diagnostic'}}},
      lualine_c = {
        {
          'filename',
          file_status = true, -- displays file status (readonly status, modified status)
          path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
        }
      },
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {
      lualine_a = {'buffers'},
      lualine_z = {'tabs'}
    }
}


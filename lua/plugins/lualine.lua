return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        theme = Config.ui.theme,
        icons_enable = true,
      },
      sections = {
        -- left
        lualine_a = { 'mode' },
        lualine_b = {
          'branch',
          {
            'filename',
            file_status = true,
            newfile_status = true,
            path = 1,
            shorting_target = 40,
          },
          'diff',
        },
        lualine_c = {},
        -- right
        lualine_x = {},
        lualine_y = { 'diagnostics', 'progress' },
        lualine_z = { 'location' },
      },
    })
  end,
}

local theme = 'auto'

if (Config.ui.theme == nil or Config.ui.theme == 'default') then
  theme = 'ayu_dark'
end

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        theme = theme,
        icons_enable = true,
        component_separators = { left = '', right = '' },
      },
      sections = {
        -- left
        lualine_a = { 'mode' },
        lualine_b = {
          {
            'filename',
            file_status = true,
            newfile_status = true,
            path = 1,
            shorting_target = 40,
          },
        },
        lualine_c = { 'diff' },
        -- right
        lualine_x = { 'diagnostics' },
        lualine_y = { 'location', 'progress' },
        lualine_z = {
          { 'branch', icon = '' },
        },
      },
    })
  end,
}

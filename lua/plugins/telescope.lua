local borders = {
  rounded = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
  single = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
  double = { '═', '║', '═', '║', '╔', '╗', '╝', '╚' },
}

return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
  },
  config = function()
    local open_with_trouble = require('trouble.sources.telescope').open
    local telescope = require('telescope')
    local border_style = borders[Config.ui.border] or borders.rounded

    telescope.setup({
      defaults = {
        borderchars = border_style,
        layout_config = {
          vertical = { width = 0.8 },
        },
        mappings = {
          i = { ['<c-t>'] = open_with_trouble },
          n = { ['<c-t>'] = open_with_trouble },
        },
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown({})
        }
      }
    })

    telescope.load_extension('ui-select')
  end
}

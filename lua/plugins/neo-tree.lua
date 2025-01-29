return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup({
      popup_border_style = Config.ui.border,
      enable_git_status = true,
      enable_diagnostics = true,
      window = { position = 'float' },
      default_component_configs = {
        diagnostics = {
          symbols = {
            hint = Config.signs.Hint,
            info = Config.signs.Information,
            warn = Config.signs.Warn,
            error = Config.signs.Error,
          },
        },
      },
    })
  end,
}

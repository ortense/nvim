return {
  'catppuccin/nvim',
  config = function()
    require('catppuccin').setup()
    vim.cmd.colorscheme(Config.ui.theme)
  end,
}


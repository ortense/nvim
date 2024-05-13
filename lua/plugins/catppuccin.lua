return {
  "catppuccin/nvim",
  config = function()
    require('catppuccin').setup({
      color_overrides = {
        mocha = {
          base = '#11111B'
        }
      }
    })
    vim.cmd.colorscheme "catppuccin-mocha"
  end,
}


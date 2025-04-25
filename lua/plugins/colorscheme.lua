local ui = require("config.ui")

return {
  name = "colorscheme",
  dir = ".",
  lazy = false,
  priority = 1000,
  dependencies = {
    { "Zeioth/neon.nvim" },
    { "catppuccin/nvim" },
    { "Mofiqul/dracula.nvim" },
    { "shaunsingh/nord.nvim" },
    { "folke/tokyonight.nvim" },
    { "rose-pine/neovim",     name = "rose-pine" },
    { "b0o/lavi.nvim",        dependencies = { 'rktjmp/lush.nvim' } },
  },
  config = function()
    vim.cmd.colorscheme(ui.colorscheme)
  end
}

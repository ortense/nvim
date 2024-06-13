local set_color = function ()
  vim.cmd.colorscheme(Config.ui.theme)
end

return {
  { 'catppuccin/nvim', config = set_color },
  { 'Mofiqul/dracula.nvim', config = set_color },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = set_color,
  },
  { 'rebelot/kanagawa.nvim', config = set_color },
  { 'shaunsingh/nord.nvim', config = set_color },
}

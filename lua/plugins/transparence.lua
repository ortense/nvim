return {
  'xiyaowong/transparent.nvim',
  config = function ()
    require('transparent').setup()
    require('transparent').clear_prefix('NeoTree')
    require('transparent').clear_prefix('Telescope')
    vim.g.transparent_enabled = Config.ui.transparence
  end
}

return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  config = function ()
    local wk = require("which-key")
    wk.setup({
      preset = 'helix',
      icons = { rules = false },
      win = {
        border = Config.ui.border,
      }
    })
    wk.add(Config.keybind)
  end
}

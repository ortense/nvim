return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function ()
    local wk = require('which-key')
    wk.setup({ window = { border = Config.ui.border } })
    wk.register(Config.keybind, { mode = 'n' })
    wk.register(Config.keybind, { mode = 'v' })
  end
}

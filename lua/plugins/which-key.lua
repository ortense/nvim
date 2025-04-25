local ui = require("config.ui")
local keymap = require("config.keymap")

return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")

    wk.setup({
      preset = "modern",
      win = { border = ui.border }
    })

    wk.add(keymap)
  end
}

local ui = require("config.ui")
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    image = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = ui.animate_scroll },
    statuscolumn = { enabled = true },
    lazygit = { enabled = true },
    words = { enabled = true },
    zen = { enabled = true },
    explorer = { enabled = true },
    dashboard = { enabled = true },
    picker = {
      enabled = true,
      sources = {
        explorer = {
          replace_netrw = true,
          auto_close = true,
          layout = { preset = "default", preview = true },
        }
      }
    },
  },
}

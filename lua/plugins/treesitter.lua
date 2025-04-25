local language_utils = require("helper.language_utils")

local plugin = { 'nvim-treesitter/nvim-treesitter' }

plugin.build = ':TSUpdate'

function plugin.config()
  local config = require('nvim-treesitter.configs')

  config.setup({
    ensure_installed = language_utils.installed_languages,
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },

    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<Enter>",
        node_incremental = "<Enter>",
        scope_incremental = false,
        node_decremental = "<Backspace>",
      },
    },
  })
end

return plugin

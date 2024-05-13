local languages = {
  "vim",
  "lua",
  "json",
  "javascript",
  "typescript",
  "tsx",
  "go",
  "php",
  "css",
  "html",
  "yaml",
  "toml",
  "markdown",
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = languages,
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  }
}

return {
  "joerdav/templ.vim",
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = { border = Config.ui.border }
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = Config.lsp
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      for _, server in pairs(Config.lsp) do
        lspconfig[server].setup({})
      end
    end
  }
}

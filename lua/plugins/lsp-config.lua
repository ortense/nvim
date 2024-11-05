return {
  'joerdav/templ.vim',
  {
    'williamboman/mason.nvim',
    config = function()
      require("mason").setup({
        ui = { border = Config.ui.border }
      })
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = Config.lsp
      })
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')

      for server, config in pairs(Config.lsp) do
        if type(server) == "number" then
          server = config
          config = {}
        end

        lspconfig[server].setup(config)
      end

      for type, icon in pairs(Config.signs) do
        local hl = 'DiagnosticSign' .. type
        vim.fn.sign_define(hl, { text = " " .. icon, texthl = hl, numhl = hl })
      end

      vim.opt.signcolumn = 'yes'
    end
  }
}

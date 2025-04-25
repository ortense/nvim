local ui = require("config.ui")
local language_utils = require("helper.language_utils")

return {
  'joerdav/templ.vim',
  {
    'williamboman/mason.nvim',
    config = function()
      require("mason").setup({
        ui = { border = ui.border }
      })
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = language_utils.installed_language_servers,
      })
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      local util = require('lspconfig.util')

      local function resolve_root(root)
        if type(root) == "string" then
          return util.root_pattern(root)
        elseif type(root) == "table" then
          return util.root_pattern(unpack(root))
        end
      end

      for server, config in pairs(language_utils.language_servers_config) do
        if config.root_dir then
          config.root_dir = resolve_root(config.root_dir)
        end

        lspconfig[server].setup(config)
      end

      vim.opt.signcolumn = 'yes'

      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = ui.border,
      })
    end
  }
}

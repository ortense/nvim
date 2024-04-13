local format_on_save = require 'format-on-save'
local formatters = require 'format-on-save.formatters'
local vim_notify = require 'format-on-save.error-notifiers.vim-notify'


format_on_save.setup({
  exclude_path_patterns = {
    '/node_modules/',
    '.local/share/nvim/lazy',
  },
  error_notifier = vim_notify,
  formatter_by_ft = {
    css = formatters.lsp,
    html = formatters.lsp,
    go = {
      formatters.shell({
        cmd = { "goimports-reviser", "-rm-unused", "-set-alias", "-format", "%" },
        tempfile = function()
          return vim.fn.expand("%") .. '.formatter-temp'
        end
      }),
      formatters.shell({ cmd = { "gofmt" } }),
    },
  },
})
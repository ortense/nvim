local lsp = require 'lspconfig'
local util = require 'lspconfig/util'

require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
		'lua_ls',
    'lua-language-server',
    'stylua',
    'html-lsp',
    'css-lsp',
    'gopls',
    'templ',
    'typescript-language-server',
    'tailwindcss-language-server',
    'eslint-lsp',
  },
})

lsp.gopls.setup({
  cmd = {"gopls"},
  filetypes = { "go", "gomod", "gowork", "gotmpl", "templ" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
})

lsp.templ.setup({
  cmd = { 'templ', 'lsp', '-http=localhost:7474' },
  filetypes = { 'templ' },
})

lsp.tailwindcss.setup({
  filetypes = { '*' },
})

lsp.lua_ls.setup({
	filetypes = { 'lua' }
})



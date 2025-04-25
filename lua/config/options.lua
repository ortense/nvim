local symbols = require("config.ui").symbols.diagnostics

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.wo.linebreak = false
vim.wo.relativenumber = false

vim.opt.wrap = false
vim.opt.sidescroll = 1
vim.opt.sidescrolloff = 15
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmode = false
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.numberwidth = 2
vim.opt.expandtab = true
vim.opt.number = true

vim.diagnostic.config({
  underline = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = symbols.error,
      [vim.diagnostic.severity.WARN] = symbols.warn,
      [vim.diagnostic.severity.INFO] = symbols.info,
      [vim.diagnostic.severity.HINT] = symbols.hint,
    },
  },
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.wo.linebreak = false
vim.o.wrap = false
vim.o.sidescroll = 1
vim.o.sidescrolloff = 15
vim.o.ignorecase = true
vim.o.smartcase = true

vim.cmd('set expandtab')
vim.cmd('set tabstop=2')
vim.cmd('set softtabstop=2')
vim.cmd('set shiftwidth=2')
vim.cmd('set number')
vim.cmd('set numberwidth=2')

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

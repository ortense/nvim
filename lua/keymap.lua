-- Set <space> as <leader>
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- telescope
vim.keymap.set('n', '<leader>f', ':Telescope find_files<CR>', {})
vim.keymap.set('n', '<leader>b', ':Telescope buffers<CR>', {})
vim.keymap.set('n', '<leader>F', ':Telescope live_grep<CR>', {})

-- floating file explorer
vim.keymap.set('n', '<leader>e', ':Neotree float<CR>', {})

-- LSP keymap
vim.keymap.set('n', '<C-k>', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<C-r>', vim.lsp.buf.rename, {})
vim.keymap.set({ 'n', 'v' }, '<leader>a', vim.lsp.buf.code_action, {})

-- go to ...
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.implementation, {})
vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, {})
vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})

-- previews
vim.keymap.set('n', '<leader>ph', ':Gitsigns preview_hunk<CR>', {})

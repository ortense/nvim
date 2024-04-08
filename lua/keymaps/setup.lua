function Map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

Map("n", "<leader>q", ":q!<enter>", { desc = 'quit' }) -- <space>+q : quit without save
Map("n", "<leader>s", ":w<enter>", { desc = 'save' })  -- <space>+s : save file
Map("n", "<leader>S", ":wq<enter>", { desc = 'save and quit' }) -- <space>+Q : save and quit


-- copy & past
vim.api.nvim_set_keymap('v', '<leader>c', '"+y', { noremap = true, silent = true }) -- <space>+c : copy in visual mode
vim.api.nvim_set_keymap('n', '<leader>v', '"+p', { noremap = true, silent = true }) -- <space>+v : paste in normal mode

-- <space>+t : toggle floating terminal
Map('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>', { desc = 'toggle floating terminal' })
Map('t', '<leader>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { desc = 'toggle floating terminal' })

-- space+e : togle tree view
Map('n', '<leader>e', ':Neotree float <CR>', { desc = 'file explorer' })

Map("n", "<leader>[", ":bprev<enter>", { desc = 'move to previous buffer' }) -- <space>+[ : previus buffer
Map("n", "<leader>]", ":bnext <enter>", { desc = 'move to next buffer' })    -- <space>+] : previus buffer
Map("n", "<leader>w", ":bdelete <enter>", { desc = 'close active buffer' })  -- <space>+w : close buffer

-- telescope
-- local telescope = require('telescope.builtin')
Map('n', '<leader>f', '<cmd>Telescope find_files<cr>', { desc = 'find files' })
Map('n', '<leader>F', '<cmd>Telescope live_grep<cr>', { desc = 'find  with live grep' })

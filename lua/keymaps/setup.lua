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

-- <space>+t : toggle floating terminal
Map('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>', { desc = 'toggle floating terminal' })
Map('t', '<leader>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { desc = 'toggle floating terminal' })

-- space+e : togle tree view
Map('n', '<leader>e', ':Neotree float <CR>', { desc = 'file explorer' })

Map("n", "<leader>[", ":bprev<enter>", { desc = 'move to previous buffer' }) -- <space>+[ : previus buffer
Map("n", "<leader>]", ":bnext <enter>", { desc = 'move to next buffer' })    -- <space>+] : previus buffer
Map("n", "<leader>w", ":bdelete <enter>", { desc = 'close active buffer' })  -- <space>+w : close buffer

-- telescope
Map('n', '<leader>p', '<cmd>Telescope find_files<cr>', { desc = 'find files' })
Map('n', '<leader>f', [[<cmd>lua require('telescope.builtin').live_grep({ prompt_title = "Search in Buffers", only_sort_text = true })<CR>]], { desc = 'find files' })
Map('n', '<leader>F', '<cmd>Telescope live_grep<cr>', { desc = 'find with live grep' })

-- lazygit
Map({ 'n', 'v' }, '<leader>g', '<cmd>LazyGit<cr>', { desc = 'open git ui'})

-- dashboard
Map({ 'n', 'v' }, '<leader>d', '<cmd>Dashboard<cr>', { desc = 'show dashboard' })

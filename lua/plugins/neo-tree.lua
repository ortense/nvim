return {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
    },
    config = function()
        require('neo-tree').setup({
            popup_border_style = Config.ui.border,
            enable_git_status = true,
            enable_diagnostics = true,
            window = {
                position = 'float',
            },
        })
    end,
}

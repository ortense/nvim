return {
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup({
        current_line_blame = true,
      })
    end
  },
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
    },
    opts = {},
    config = function ()
      require('neogit').setup({
        integrations = {
          telescope = true,
          diffview = true,
        },
      })
    end,
  },
  'sindrets/diffview.nvim',
}

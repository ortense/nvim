return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local open_with_trouble = require('trouble.sources.telescope').open
      local telescope = require('telescope')

      telescope.setup({
        defaults = {
          layout_strategy = 'vertical',
          layout_config = {
            -- prompt_position = 'top',
            mirror = true,
            width = 0.8,
          },
          mappings = {
            i = { ["<c-t>"] = open_with_trouble },
            n = { ["<c-t>"] = open_with_trouble },
          },
        },
      })
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup({
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown({})
          }
        }
      })

      require('telescope').load_extension('ui-select')
    end
  }
}

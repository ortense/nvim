return {
  {
    "echasnovski/mini.ai",
    version = '*',
    dependencies = {
      { "echasnovski/mini.nvim", version = false },
    },
  },
  {
    "echasnovski/mini.move",
    version = "*",
    config = function()
      require("mini.move").setup({
        mappings = {
          -- Visual mode
          left = 'H',
          right = 'L',
          down = 'J',
          up = 'K',
          -- Normal mode
          line_left = 'H',
          line_right = 'L',
          line_down = 'J',
          line_up = 'K',
        },
        options = {
          reindent_linewise = true,
        },
      })
    end,
  },
  {
    "echasnovski/mini.cursorword",
    version = "*",
    config = function()
      require("mini.cursorword").setup()
    end,
  },
  {
    "echasnovski/mini.bracketed",
    version = "*",
    config = function()
      require("mini.bracketed").setup()
    end,
  },
  {
    "echasnovski/mini.indentscope",
    version = "*",
    config = function()
      require("mini.indentscope").setup()
    end,
  },
  {
    "echasnovski/mini.surround",
    version = "*",
    ops = {},
    config = function()
      require("mini.surround").setup()
    end
  },
  {
    "echasnovski/mini.animate",
    version = "*",
    config = function()
      if Config.ui.animateScroll then
        require("mini.animate").setup()
      end
    end
  },
}

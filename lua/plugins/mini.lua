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
      require("mini.move").setup()
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
}

return {
  {
    "kevinhwang91/nvim-ufo",
    dependencies = {
      "kevinhwang91/promise-async",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local ufo = require("ufo")
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true
      ufo.setup()
    end
  },
}

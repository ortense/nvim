local ui = require("config.ui")

return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    if ui.show_bufferline then
      vim.opt.termguicolors = true
      require("bufferline").setup({})
    end
  end
}

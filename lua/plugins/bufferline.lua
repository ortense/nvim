return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    if Config.ui.show_bufferline then
      vim.opt.termguicolors = true
      require("bufferline").setup({})
    end
  end
}

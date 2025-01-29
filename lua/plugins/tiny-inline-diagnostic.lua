return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy",
  priority = 1000,
  config = function()
    require("tiny-inline-diagnostic").setup({
      show_source = false,
      only_current_line = true,
      preset = "powerline",
    })
    vim.diagnostic.config({
      virtual_text = false,
    })
  end
}

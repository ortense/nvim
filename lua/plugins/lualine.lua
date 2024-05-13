return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin-mocha",
        icons_enable = true
      },
      sections = {
        -- left
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = {
          {
            "filename",
            file_status = true,
            newfile_status = true,
            path = 1,
            shorting_target = 40,
          },
        },
        -- right
        lualine_x = { "diagnostics" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      }
    })
  end,
}

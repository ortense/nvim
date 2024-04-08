require("bufferline").setup({
  options = {
    separator_style = 'icon',
    modified_icon = '●',
    indicator = {
      icon = ' 󰈈 ',
      style = 'icon'
    },
    hover = {
      enabled = true,
      delay = 200,
      reveal = {"close"}
    },
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        separator = true
      }
    }
  }
})
local ui = require('config.ui')
local symbols = ui.symbols

local theme = 'auto'

if (ui.colorscheme == nil or ui.colorscheme == 'default') then
  theme = 'ayu_dark'
end

local modes = {
  ["NORMAL"]   = { symbol = symbols.modes["NORMAL"] },
  ["INSERT"]   = { symbol = symbols.modes["INSERT"] },
  ["VISUAL"]   = { symbol = symbols.modes["VISUAL"], label = "SELECT" },
  ["V-LINE"]   = { symbol = symbols.modes["V-LINE"], label = "SELECT LINE" },
  ["V-BLOCK"]  = { symbol = symbols.modes["V-BLOCK"], label = "SELECT BLOCK" },
  ["COMMAND"]  = { symbol = symbols.modes["COMMAND"] },
  ["TERMINAL"] = { symbol = symbols.modes["TERMINAL"] },
  ["REPLACE"]  = { symbol = symbols.modes["REPLACE"] },
}

local function fmt_mode(mode)
  local entry = modes[mode]
  if entry then
    local label = entry.label or mode
    return string.format("%s %s", entry.symbol, label)
  end
  return mode
end

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        theme = theme,
        icons_enable = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        -- left
        lualine_a = {
          { 'mode', fmt = fmt_mode },
        },
        lualine_b = { 'diff' },
        lualine_c = {
          {
            -- center --
            function()
              return "%="
            end,
            separator = "",
          },
          ui.show_bufferline and { 'diagnostics', symbols = symbols.diagnostics } or {
            'filetype',
            icon_only = true,
            separator = "",
            padding = {
              left = 1,
              right = 0,
            },
          },
          ui.show_bufferline and {} or {
            'filename',
            file_status = true,
            newfile_status = true,
            path = 1,
            shorting_target = 40,
            symbols = symbols.files,
          },
        },
        -- right
        lualine_x = {
          ui.show_bufferline and {} or { 'diagnostics', symbols = symbols.diagnostics }
        },
        lualine_y = { 'location', 'progress' },
        lualine_z = {
          { 'branch', icon = symbols.git.branch },
        },
      },
    })
  end,
}

local function mini(name, custom)
  local plugin = {
    "echasnovski/mini." .. name,
    version = "*",
    config = function()
      require("mini." .. name).setup()
    end,
  }

  if type(custom) == "function" then
    plugin.config = custom
  elseif type(custom) == "table" then
    for key, value in pairs(custom) do
      plugin[key] = value
    end
  end

  return plugin
end

return {
  mini("ai"),
  mini("bracketed"),
  mini("cursorword"),
  mini("indentscope"),
  mini("pairs"),
  mini("surround"),
  mini("animate", function()
    if Config.ui.animate_scroll then
      require("mini.animate").setup()
    end
  end),
  mini("move", function()
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
  end),
}

return {
  { "echasnovski/mini.ai",       opts = {} },
  { "echasnovski/mini.surround", opts = {} },
  {
    "echasnovski/mini.pairs",
    opts = {
      modes = { insert = true, command = true, terminal = false },
      skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
      skip_ts = { "string" },
      skip_unbalanced = true,
      markdown = true,
    }
  },
  {
    "echasnovski/mini.move",
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
}

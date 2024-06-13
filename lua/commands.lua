vim.api.nvim_create_user_command(
  'CloseOtherBuffers',
  function ()
    local current_buf = vim.api.nvim_get_current_buf()
    local buffers = vim.api.nvim_list_bufs()
    local message = 'buffers closed'
    local count = 0

    for _, buf in ipairs(buffers) do
      if buf ~= current_buf then
        vim.api.nvim_buf_delete(buf, {})
        count = count + 1
      end
    end

    if count == 1 then
      message = 'buffer closed'
    end

    print(count, message)
  end,
  {}
)

vim.api.nvim_create_user_command(
  'ConfigOpen',
  function ()
    vim.cmd('edit ~/.config/nvim/lua/config.lua')
  end,
  {}
)

vim.api.nvim_create_user_command(
  'Theme',
  function (args)
    vim.cmd.colorscheme(args.args)
  end,
  {
    nargs = 1,
    complete = function (arglead)
      return vim.tbl_filter(function(val)
        return vim.startswith(val, arglead)
      end, {
          'catppuccin-frappe',
          'catppuccin-latte',
          'catppuccin-macchiato',
          'catppuccin-mocha',
          'dracula',
          'dracula-soft',
          'tokyonight',
          'tokyonight-storm',
          'tokyonight-moon',
          'tokyonight-day',
          'nord',
          'default',
        })
    end
  }
)


Custom = {}

function Custom.close_other_buffers()
  local current_buf = vim.api.nvim_get_current_buf()
  local buffers = vim.api.nvim_list_bufs()
  for _, buf in ipairs(buffers) do
    if buf ~= current_buf then
      vim.api.nvim_buf_delete(buf, {})
    end
  end
end

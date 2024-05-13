require "vim-options"
require "keymap"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

local function is_directory(path)
  local stat = vim.loop.fs_stat(path)
  return stat and stat.type == 'directory'
end

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if is_directory(vim.fn.argv()[1] or ".") then
      vim.cmd("bd")
      require('telescope.builtin').find_files()
    end
  end
})

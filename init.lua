require 'user.options'
require 'user.keymaps'
require 'user.autocmds'

-- protected call
local status_ok, lazy = pcall(require, 'config.lazy')
if not status_ok then
  vim.notify "Lazy.nvim can't work properly"
  return
end

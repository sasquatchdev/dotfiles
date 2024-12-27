local M = {}

M.early = function()
  vim.g.mapleader = " "
  vim.g.maplocalleader = "\\"
end

M.setup = function()
  vim.opt.expandtab = true
  vim.opt.shiftwidth = 2
  vim.opt.tabstop = 2
  vim.opt.softtabstop = 2
end

return M

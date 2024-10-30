local M = {}

-- Sets the flavour of catppuccin. Available options:
-- 
-- frappe (lighter)
-- latte  (light)
-- macchiato (dark)
-- mocha (darker)
-- auto

M.flavour = "mocha"

M.opts = {
  flavour = M.flavour,
  transparent_background = true,
}

M.setup = function()
  require("catppuccin").setup(M.opts)
  vim.cmd.colorscheme "catppuccin"
end

return M;

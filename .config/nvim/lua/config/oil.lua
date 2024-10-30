local M = {}

M.setup = function()
  require("oil").setup()
  vim.keymap.set("n", "-", ":Oil<Enter>", { desc = "Opens parent directory" })
end

return M;

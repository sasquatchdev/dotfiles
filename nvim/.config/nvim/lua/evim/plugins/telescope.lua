return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    vim.keymap.set("n", "<Leader>ff", ":Telescope find_files<Return>", {})
    vim.keymap.set("n", "<Leader>fg", ":Telescope live_grep<Return>", {})
    vim.keymap.set("n", "<Leader>fb", ":Telescope buffers<Return>", {})
  end
}

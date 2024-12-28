return {
  'stevearc/oil.nvim',
  dependencies = { { "echasnovski/mini.icons", opts = {} } },

  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    skip_confirm_for_simple_edits = true,
  },
  config = function(_, opts)
    require("oil").setup(opts)
    vim.keymap.set("n", "-", ":Oil<Return>", { desc = "Opens current/parent folder." })
  end
}

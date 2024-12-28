---@diagnostic disable: missing-fields
local M = {}

M.server_opts = {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
  on_attach = function(client, bufnr)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Triggers lsp.buf.hover" })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Triggers lsp.buf.definition" })
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Triggers lsp.buf.declaration" })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Triggers lsp.buf.implementation" })
    vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, { desc = "Triggers lsp.buf.code_action" })

    require("better-diagnostic-virtual-text.api").setup_buf(bufnr, {
      inline = true,
    })
  end
}

return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function(_, opts)
    require("mason").setup()
    require("mason-lspconfig").setup(opts)
    require("mason-lspconfig").setup_handlers({
      function(server) require("lspconfig")[server].setup(M.server_opts) end
    })
  end
}

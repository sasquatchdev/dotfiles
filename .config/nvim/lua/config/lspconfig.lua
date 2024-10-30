local M = {}

-- Options that will be passed to the
-- require("mason-lspconfig").setup function
M.mason_opts = {}

-- Options that will be passed to the
-- require("lspconfig")[server].setup function
M.lspconfig_opts = {
  capabilities = require("cmp_nvim_lsp").default_capabilities()
}

M.handlers = {
  function(server)
    require("lspconfig")[server].setup(M.lspconfig_opts)
  end
}

M.setup = function()
  require("mason").setup()
  require("mason-lspconfig").setup(M.opts)
  require("mason-lspconfig").setup_handlers(M.handlers)

  vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
  vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, {})
  vim.keymap.set("n", "<Leader>gd", vim.lsp.buf.definition, {})
  vim.keymap.set("n", "<Leader>gD", vim.lsp.buf.declaration, {})
  vim.keymap.set("n", "<Leader>gi", vim.lsp.buf.implementation, {})

  vim.keymap.set("n", "<Leader>d", function()
    vim.diagnostic.open_float(nil, { focus = false, border = "rounded" })
  end, {})
end

return M;

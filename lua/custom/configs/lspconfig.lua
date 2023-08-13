local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

vim.diagnostic.config({
  virtual_text = {
    severity = vim.diagnostic.severity.ERROR,
  }
})

-- if you just want default config for the servers then put them in a table
local servers = { "pylsp", "clangd", "erlangls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

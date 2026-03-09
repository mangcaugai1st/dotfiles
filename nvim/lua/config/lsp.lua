--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config('html', {
  capabilities = capabilities,
})
vim.lsp.enable('clangd')
vim.lsp.enable('ts_ls')
vim.lsp.enable('angularls')
vim.lsp.enable('html')
vim.lsp.enable('cssls')
vim.lsp.enable('tailwindcss')

-- vim.lsp.config("roslyn", {})

vim.lsp.enable("roslyn")


-- pyright is a lsp for Python
require 'lspconfig'.pyright.setup{}

-- clangd is a lsp for C/C++
-- require 'lspconfig'.clangd.setup{}

-- gopls is a lsp for Golang
-- require 'lspconfig'.gopls.setup({
--   settings = {
--     gopls = {
--       analyses = {
--         unusedparams = true,
--       },
--       staticcheck = true,
--       gofumpt = true,
--     },
--   },
-- })

-- omnisharp is a lsp for C#, .Net
-- require 'lspconfig'.omnisharp.setup {
--   on_attach = on_attach,
--   handlers = handlers,
--   capabilities = capabilities,
--   cmd = { "dotnet", "C:\\Users\\mangc\\AppData\\Local\\nvim-data\\mason\\packages\\omnisharp\\libexec\\OmniSharp.dll"},
-- }

-- require'lspconfig'.csharp_ls.setup{}

-- require 'lspconfig'.hls.setup{}

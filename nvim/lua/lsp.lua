-- require 'lspconfig'.setup{}

-- pyright is a lsp for Python
require 'lspconfig'.pyright.setup{}

-- clangd is a lsp for C/C++
require 'lspconfig'.clangd.setup{}

-- gopls is a lsp for Golang
require 'lspconfig'.gopls.setup({
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
})

-- omnisharp is a lsp for C#, .Net
require 'lspconfig'.omnisharp.setup {
  on_attach = on_attach,
  handlers = handlers,
  capabilities = capabilities,
  cmd = { "dotnet", "C:\\Users\\mangc\\AppData\\Local\\nvim-data\\mason\\packages\\omnisharp\\libexec\\OmniSharp.dll"},
}

-- emmet-ls is a lsp for html, css, javascript, typescript, sass, less
require 'lspconfig'.emmet_ls.setup { 
  cmd = { "emmet-ls", "--stdio" }, 
  filetypes = { "html", "css", "javascript", "typescript", "sass", "less" }, 
}

-- require'lspconfig'.csharp_ls.setup{}


-- vscode-langservers-extracted is a lsp for html, css, json, eslint.
-- Warning 
-- You must install vscode-langservers-extracted via npm,
-- Because it not available in Mason.
-- Commnand to install it: 
-- npm i -g vscode-langservers-extracted
require 'lspconfig'.jsonls.setup{
  cmd = { "vscode-json-language-server", "--stdio"},
  filetypes = { "json" },
}


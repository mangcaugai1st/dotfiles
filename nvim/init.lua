-- Loading lazy plugin manager
require("config.lazy")
-- Loading settings of the neovim
require("settings")
-- Loading key mapping
require("maps")



-- require 'lspconfig'..setup{}

require 'lspconfig'.pyright.setup{}

require 'lspconfig'.clangd.setup{}

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

require 'lspconfig'.omnisharp.setup {
  on_attach = on_attach,
  handlers = handlers,
  capabilities = capabilities,
  cmd = { "dotnet", "C:\\Users\\mangc\\AppData\\Local\\nvim-data\\mason\\packages\\omnisharp\\libexec\\OmniSharp.dll"},
}

-- require'lspconfig'.csharp_ls.setup{}


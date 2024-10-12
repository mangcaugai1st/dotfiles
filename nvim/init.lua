-- Loading lazy plugin manager
require("config.lazy")
-- Loading settings of the neovim
require("settings")
-- Loading key mapping
require("maps")



-- require 'lspconfig'..setup{}
require 'lspconfig'.pyright.setup{}


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



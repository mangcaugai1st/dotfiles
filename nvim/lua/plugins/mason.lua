return {
  "williamboman/mason.nvim",
  config = function()  
    require("mason").setup()
    require("mason-lspconfig").setup{
      ensure_installed = {
        "clangd",
        "omnisharp",
        "gopls",
        "pyright",
        "emmet_ls"
      },
      -- automatic_installation = true,
    }
  end, 
}

return {
  "williamboman/mason.nvim",
  config = function()  
    require("mason").setup()
    require("mason-lspconfig").setup{
      ensure_installed = {"clangd", "omnisharp", "gopls", "pyright"},
      -- automatic_installation = true,
    }
  end, 
}

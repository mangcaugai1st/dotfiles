return { 
  "hrsh7th/nvim-cmp", 
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",
  },

  config = function()
    local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["luasnip"](args.body)
      end,
    },
    mapping = cmp.mapping.preset.insert({
      ['<tab>'] = cmp.mapping.select_next_item(cmp_select),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), 
    }),

    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
    }, 
    {
      { name = 'buffer' },
    })
  })  
  end,
}

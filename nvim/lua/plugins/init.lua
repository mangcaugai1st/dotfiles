return {
  {
    'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup({
        options = {
        -- Enable diagnostics
        diagnostics = "nvim_lsp", -- or "coc"
        -- Optionally customize diagnostic icons
        diagnostics_update_in_insert = false,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local s = " "
          for e, n in pairs(diagnostics_dict) do
            local sym = e == "error" and " " or (e == "warning" and " " or "")
            s = s .. n .. sym
          end
          return s
        end,
        }
      })
    end,
  },
  -- { 
  --   "ribru17/bamboo.nvim",
  --   priority = 1000,
  --   config = function()
  --     require('bamboo').setup {

  --     }
  --     require('bamboo').load()
  --   end,
  -- },
  -- { 
  --   "ellisonleao/gruvbox.nvim",
  --   priority = 1000 , 
  --   config = true, 
  -- },
  -- {
  --   "slugbyte/lackluster.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   init = function()
  --       -- vim.cmd.colorscheme("lackluster")
  --       vim.cmd.colorscheme("lackluster-hack") -- my favorite
  --       -- vim.cmd.colorscheme("lackluster-mint")
  --   end,
  -- },
  -- {
  --   "n1ghtmare/noirblaze-vim",
  --   lazy = false,
  --   priority = 1000,
  --   -- init = function()
  --   --     -- vim.cmd.colorscheme("lackluster")
  --   --     vim.cmd.colorscheme("noirblaze") -- my favorite
  --   --     -- vim.cmd.colorscheme("lackluster-mint")
  --   -- end,
  --   config = function()      
  --       vim.cmd.colorscheme("noirblaze") -- my favorite
  --   end,
  -- },
  -- {
  --   "ntk148v/komau.vim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()      
  --     require('komau').setup({
  --       style = 'dark',
  --       transparent = false,
  --       terminal_colors = true,
  --       styles = {
  --         comments = { italic = true },
  --         keywords = { bold = true  },
  --       },
  --       vim.cmd.colorscheme('komau'),
  --     })
  --   end,
  -- },

  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    config = function()
      require('onedarkpro').setup({
        vim.cmd.colorscheme('onelight'),
      }) 
    end,
  };

  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {
        diagnostics = {
          enable = true,
        }
      }
    end,
  },

  {
    "elihunter173/dirbuf.nvim",
    confi= function() 
      require("dirbuf").setup {}
    end,
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = '|',
        section_separators = '',
      }
    }
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
  },

  {
      'windwp/nvim-autopairs',
      event = "InsertEnter",
      config = true
      -- use opts = {} for passing setup options
      -- this is equivalent to setup({}) function
  },

  {
    "mason-org/mason.nvim",
    config = function()
      require('mason').setup({
        registries = {
          'github:mason-org/mason-registry',
          "github:crashdummyy/mason-registry"
        },
      })
    end
  },
  
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      -- "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "ts_ls", -- TypeScript/JavaScript
          "html",
          "cssls",
          "tailwindcss",
          "angularls", -- Angular
          "eslint",
          "clangd",
        },
      })
    end,
  },

  -- Autocompletion
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = {
  --     "hrsh7th/cmp-nvim-lsp",
  --     "hrsh7th/cmp-buffer",
  --     "hrsh7th/cmp-path",
  --     "L3MON4D3/LuaSnip",
  --     "saadparwaiz1/cmp_luasnip",
  --   },
  --   config = function()
  --     local cmp = require("cmp")
  --     local luasnip = require("luasnip")

  --     cmp.setup({
  --       snippet = {
  --         expand = function(args)
  --           luasnip.lsp_expand(args.body)
  --         end,
  --       },
  --       mapping = cmp.mapping.preset.insert({
  --         -- ["<C-d>"] = cmp.mapping.scroll_docs(-4),
  --         -- ["<C-f>"] = cmp.mapping.scroll_docs(4),
  --         -- ["<C-Space>"] = cmp.mapping.complete(),
  --         ["<CR>"] = cmp.mapping.confirm({ select = true }),
  --         ["<Tab>"] = cmp.mapping(function(fallback)
  --           if cmp.visible() then
  --             cmp.select_next_item()
  --           elseif luasnip.expand_or_jumpable() then
  --             luasnip.expand_or_jump()
  --           else
  --             fallback()
  --           end
  --         end, { "i", "s" }),
  --       }),
  --       sources = {
  --         { name = "nvim_lsp" },
  --         { name = "luasnip" },
  --         { name = "buffer" },
  --         { name = "path" },
  --       },
  --     })
  --   end,
  -- },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or  , branch = '0.1.x',
    dependencies = { 
                      'nvim-lua/plenary.nvim',
    },
  },

  {
    "folke/trouble.nvim",
    opts = { }, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>cb",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
    },
  },

  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate'
  },

  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    lazy = false,
    opts = { },
  },

  {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          cs = { "csharpier" },
        }
      })
    end,
  },

  {
    "seblj/roslyn.nvim",
    ft = "cs",
    opts = {
      config = {
        -- Cấu hình tại đây
        settings = {
          ["csharp|inlay_hints"] = {
            csharp_enable_inlay_hints_for_implicit_object_creation = true,
            csharp_enable_inlay_hints_for_implicit_variable_types = true,
            csharp_enable_inlay_hints_for_lambda_parameter_types = true,
            csharp_enable_inlay_hints_for_types = true,
            dotnet_enable_inlay_hints_for_indexer_parameters = true,
            dotnet_enable_inlay_hints_for_literal_parameters = true,
            dotnet_enable_inlay_hints_for_object_creation_parameters = true,
            dotnet_enable_inlay_hints_for_other_parameters = true,
            dotnet_enable_inlay_hints_for_parameters = true,
            dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = true,
            dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = true,
            dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true,
          },
          ["csharp|code_lens"] = {
            dotnet_enable_references_code_lens = true,
          },
        },
      },
    },
  },

  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {--[[ things you want to change go here]]},
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<c-t>]],
        shell = 'powershell',  
        direction = 'float',
      }) 
    end,
  },
}

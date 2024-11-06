return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- vim.cmd[[colorscheme tokyonight-night]]
    vim.cmd[[colorscheme tokyonight-storm]]
    -- vim.cmd[[colorscheme tokyonight-day]]
  end,
}

-- return {
  -- 'ribru17/bamboo.nvim',
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
  -- require('bamboo').setup {}
  -- require('bamboo').load()
  -- end,
-- }



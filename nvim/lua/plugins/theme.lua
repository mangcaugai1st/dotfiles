-- return {
  -- "folke/tokyonight.nvim",
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
    -- vim.cmd[[colorscheme tokyonight-night]]
    -- vim.cmd[[colorscheme tokyonight-storm]]
    -- vim.cmd[[colorscheme tokyonight-day]]
  -- end,
-- }

-- return {
  -- 'ribru17/bamboo.nvim',
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
  -- require('bamboo').setup {}
  -- require('bamboo').load()
  -- end,
-- }

return {
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('github-theme').setup({
      -- ...
    })

    vim.cmd('colorscheme github_dark_dimmed')
  end,
}


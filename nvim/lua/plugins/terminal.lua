return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup{
      -- size of terminal
      size = 20;
      -- key mapping to show float terminal
      open_mapping = [[<c-t>]],
      -- float terminal
      direction = 'float',
      float_opts = {
        -- border terminal
        border = 'curved',
        winblend = 3
      }
    }
  end, 
}

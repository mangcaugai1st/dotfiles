-- return {
--  "iamcco/markdown-preview.nvim",
--  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
--  build = "cd app && yarn install",
--  init = function()
--    vim.g.mkdp_filetypes = { "markdown" }
--    vim.g.mkdp_auto_start = 0
--    vim.g.mkdp_auto_close = 1
--    vim.g.mkdp_refresh_slow = 0
--    vim.g.mkdp_command_for_global = 0
--    vim.g.mkdp_open_to_the_world = 0
--    vim.g.mkdp_open_ip = ''
--    vim.g.mkdp_browser = ''
--    vim.g.mkdp_echo_preview_url = 0
--    vim.g.mkdp_browserfunc = ''

--  end,
--  ft = { "markdown" },
-- }
--


return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function() vim.fn["mkdp#util#install"]() end,
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
  config = function()
      -- Cấu hình markdown preview
      vim.g.mkdp_auto_start = 0  -- Không tự động mở preview khi mở file markdown
      vim.g.mkdp_auto_close = 1  -- Tự động đóng preview khi chuyển buffer
      vim.g.mkdp_refresh_slow = 0  -- Cập nhật preview realtime
      vim.g.mkdp_command_for_global = 0  -- Chỉ kích hoạt cho file markdown
      vim.g.mkdp_browser = ''  -- Sử dụng trình duyệt mặc định
      vim.g.mkdp_preview_options = {
        mkit = {},
        katex = {},
        uml = {},
        maid = {},
        disable_sync_scroll = 0,
        sync_scroll_type = 'middle',
      }
  end,
}

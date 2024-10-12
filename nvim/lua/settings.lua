vim.opt.number = true
-- vim.opt.relativenumber = true 

vim.opt.syntax = "on"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.encoding = "UTF-8"

vim.opt.mouse = "a"
vim.opt.termguicolors = true




vim.wo.signcolumn = 'yes'  -- Luôn hiển thị cột dấu hiệu
vim.diagnostic.config({
    virtual_text = true,  -- Hiển thị lỗi dưới dạng văn bản ảo
    signs = true,         -- Hiển thị dấu hiệu bên cạnh lỗi
    update_in_insert = true,  -- Cập nhật lỗi trong chế độ chèn
})

vim.o.updatetime = 300  -- Thời gian cập nhật

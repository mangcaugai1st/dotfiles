-- vim.o.shell = "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe"
vim.opt.number = true
vim.opt.relativenumber = false 

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.encoding = "UTF-8"

vim.opt.mouse = "a"
vim.opt.termguicolors = true




vim.wo.signcolumn = 'yes'  -- Alway show diagnostic 
vim.diagnostic.config({
    virtual_text = true,  -- Enable warning, error text
    signs = true,         -- Display sybol next to error or warning
    update_in_insert = true,  -- Update new warning, error in Insert mode
})

vim.o.updatetime = 300  -- Update time

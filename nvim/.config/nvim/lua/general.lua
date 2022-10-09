-- General
vim.opt.mouse = 'a'

-- tabs
vim.opt.autoindent = true
vim.opt.expandtab = true
-- vim.opt.tabstop = 4
vim.opt.copyindent = true
-- highlight current line and column
vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true

--Visual 
vim.opt.showmatch = true
-- Autocmnds and Augroups
local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand
local augroup = vim.api.nvim_create_augroup   -- Create/get autocommand group

vim.wo.number = true

augroup('numbertoggle', {clear = true })
augroup('comments', {clear = true })

autocmd('FileType', {
	group = 'comments',
	pattern = '*',
	command = 'setlocal formatoptions-=cro'
})

autocmd('InsertEnter', {
	group = 'numbertoggle',
	pattern = '*',
	command = 'set nornu'
})
-- autocmd('BufLeave', {
-- 	group = 'numbertoggle',
-- 	pattern = '*',
-- 	-- TODO set for buffer and windows as well need an if statement right here or something idk how lua works lmao
-- 	command = "echo 'this is a test'"
-- })
autocmd('InsertLeave', {
	group = 'numbertoggle',
	pattern = '*',
	command = 'set rnu'
})


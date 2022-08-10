-- General
vim.opt.mouse = 'a'

-- tabs
vim.opt.autoindent = true
vim.opt.expandtab = true

-- highlight current line and column
vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true

-- Autocmnds and Augroups
local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand
local augroup = vim.api.nvim_create_augroup   -- Create/get autocommand group

vim.wo.number = true

augroup('numbertoggle', {clear = true })
autocmd('InsertEnter', {
	group = 'numbertoggle',
	pattern = '*',
	-- TODO set for buffer and windows as well need an if statement right here or something idk how lua works lmao
	command = 'set nornu'
})
autocmd('InsertLeave', {
	group = 'numbertoggle',
	pattern = '*',
	command = 'set rnu'
})


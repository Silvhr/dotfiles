local o = vim.o
-- General

o.softtabstop = 4
o.shiftwidth = 4
o.tabstop = 4
o.expandtab = true
o.joinspaces = false

o.number = true
o.relativenumber = true

o.hlsearch = false
o.incsearch = true

o.smartcase = true
o.scrolloff = 15
o.hidden = true
o.wrap = false
o.swapfile = false
o.backup = false
o.undofile = true
o.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir"
o.backspace = "indent,eol,start"
o.foldmethod = "marker"
o.title = true
o.errorbells = false
o.cursorline = false
o.cursorcolumn = false
o.splitright = true
o.splitbelow = true
o.completeopt = "menuone,noselect,noinsert"
o.shortmess = "c"
o.clipboard = "unnamedplus"
o.updatetime = 50
o.signcolumn = "yes"
o.lazyredraw = false
o.timeoutlen = 250
o.showmode = false
o.shortmess = "filnxtToOFWIcC"

o.termguicolors = true

o.foldmethod = "indent"
o.nofoldenable = true
o.foldlevel = 99

o.mouse = 'a'

-- tabs
-- vim.opt.autoindent = true
-- vim.opt.expandtab = true
-- -- vim.opt.tabstop = 4
-- vim.opt.copyindent = true
-- -- highlight current line and column
-- vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true

--Visual 
o.showmatch = true
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


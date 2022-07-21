local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true}
keymap('n','<c-j>', '<c-w>j', opts)
keymap('n','<c-h>', '<c-w>h', opts)
keymap('n','<c-k>', '<c-w>k', opts)
keymap('n','<c-l>', '<c-w>l', opts)

--  General
--
keymap('n', '<leader>c', ':setlocal formatoptions-=cro<CR>',opts) --disable auto comment
keymap('n', '<leader>C', ':setlocal formatoptions=cro<CR>',opts) --enable auto comment
-- keymap('n', '<cmd>:x', ':wqa<CR>', opts) -- use :x to write quit and close all buffers
-- Buffer
keymap('n', ';', ':bn<CR>',opts)


--  Nvim-Tree (File Browser)
keymap('n', '<leader><leader>', ':NvimTreeToggle<CR>', opts)

-- Runner
keymap('n', '<F5>', '<cmd> Run <cr>', opts)

-- Telescope bindings
keymap('n','<leader>f', ':Telescope find_files<CR>', opts)
keymap('n','<leader>g', ':Telescope live_grep<CR>', opts)
keymap('n','<leader>b', ':Telescope buffers<CR>', opts)


-- hop.nvim binds
vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})

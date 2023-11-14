local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }
keymap("n", "<c-j>", "<c-w>j", opts)
keymap("n", "<c-h>", "<c-w>h", opts)
keymap("n", "<c-k>", "<c-w>k", opts)
keymap("n", "<c-l>", "<c-w>l", opts)

--  General
keymap("n", "<leader>C", ":setlocal formatoptions=cro<CR>", opts)
--TODO toggle auto-comment

-- Insert Mode Hack
-- keymap('i', '<C-BS>', '<C-W>', opts)
keymap("i", "jj", "<ESC>", opts)

--  Bubble Lines
keymap("n", "J", ":m .+1<CR>==", opts)
keymap("n", "K", ":m .-2<CR>==", opts)
keymap("v", "J", ":m '>+1<CR>gv-gv", opts)
keymap("v", "K", ":m '<-2<CR>gv-gv", opts)

-- Visual Mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

--  Resize Windows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

--  Nvim-Tree/Neo-Tree (File Browser)
-- keymap("n", "<leader><Tab>", ":NvimTreeToggle<CR>", opts)
-- keymap("n", "<leader><Tab>", ":NeoTreeShowToggle<CR>", opts)
keymap("n", "<Tab>", ":Neotree toggle<CR>", opts)

-- Runner
keymap("n", "<F5>", "<cmd> Run <cr>", opts)

-- Debug TODO
-- keymap('n', '<F6>', '<cmd> Debug <cr>', opts)

-- LSP
-- Null-ls
keymap("n", "<leader>5", ":lua vim.lsp.buf.format() <CR>", opts)

--Harpoon
keymap("n", "<leader>a", ':lua require("harpoon.mark").add_file() <CR>', opts)
keymap("n", "<leader>A", ':lua require("harpoon.ui").toggle_quick_menu() <CR>', opts)
keymap("n", "<leader>1", ':lua require("harpoon.ui").nav_file(1) <CR>', opts)
keymap("n", "<leader>2", ':lua require("harpoon.ui").nav_file(2) <CR>', opts)
keymap("n", "<leader>3", ':lua require("harpoon.ui").nav_file(3) <CR>', opts)
keymap("n", "<leader>4", ':lua require("harpoon.ui").nav_file(4) <CR>', opts)
keymap("n", "<leader>s", ':lua require("harpoon.ui").nav_next() <CR>', opts)
keymap("n", "<leader>d", ':lua require("harpoon.ui").nav_prev() <CR>', opts)

-- Telescope bindings
keymap("n", "<leader>f", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>g", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>b", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>r", ":Telescope registers<CR>", opts)

-- Appearance
keymap("n", "<F7>", ":TransparentToggle<CR>", opts)

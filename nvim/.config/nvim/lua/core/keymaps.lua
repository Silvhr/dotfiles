vim = vim or {}
local keymap = vim.api.nvim_set_keymap

-- Base options table
local base_opts = { noremap = true, silent = true }

-- Function to add description to base options
local function with_desc(opts, desc)
  return vim.tbl_extend("force", opts, { desc = desc })
end

-- Window Navigation
keymap("n", "<c-j>", "<c-w>j", with_desc(base_opts, "Move to the window below"))
keymap("n", "<c-h>", "<c-w>h", with_desc(base_opts, "Move to the window left"))
keymap("n", "<c-k>", "<c-w>k", with_desc(base_opts, "Move to the window above"))
keymap("n", "<c-l>", "<c-w>l", with_desc(base_opts, "Move to the window right"))

-- General
keymap("n", "<leader>C", ":setlocal formatoptions=cro<CR>", with_desc(base_opts, "Set local format options to cro"))
-- TODO toggle auto-comment

-- Insert Mode Hack
-- keymap('i', '<C-BS>', '<C-W>', opts)
keymap("i", "jj", "<ESC>", with_desc(base_opts, "Exit insert mode"))

-- Bubble Lines
keymap("n", "J", ":m .+1<CR>==", with_desc(base_opts, "Move line down"))
keymap("n", "K", ":m .-2<CR>==", with_desc(base_opts, "Move line up"))
keymap("v", "J", ":m '>+1<CR>gv-gv", with_desc(base_opts, "Move selected lines down"))
keymap("v", "K", ":m '<-2<CR>gv-gv", with_desc(base_opts, "Move selected lines up"))

-- Visual Mode
keymap("v", "<", "<gv", with_desc(base_opts, "Indent left"))
keymap("v", ">", ">gv", with_desc(base_opts, "Indent right"))

-- Resize Windows
keymap("n", "<C-Up>", ":resize +2<CR>", with_desc(base_opts, "Increase window height"))
keymap("n", "<C-Down>", ":resize -2<CR>", with_desc(base_opts, "Decrease window height"))
keymap("n", "<C-Left>", ":vertical resize -2<CR>", with_desc(base_opts, "Decrease window width"))
keymap("n", "<C-Right>", ":vertical resize +2<CR>", with_desc(base_opts, "Increase window width"))

-- Nvim-Tree/Neo-Tree (File Browser)
-- keymap("n", "<leader><Tab>", ":NvimTreeToggle<CR>", opts)
-- keymap("n", "<leader><Tab>", ":NeoTreeShowToggle<CR>", opts)
keymap("n", "<Tab>", ":Neotree toggle<CR>", with_desc(base_opts, "Toggle file explorer"))

-- Runner
keymap("n", "<F5>", "<cmd> Run <cr>", with_desc(base_opts, "Run the current file"))

-- Competitive Programming
keymap("n", "<leader>cp", ":CompetiTest run<CR>", with_desc(base_opts, "Run CompetiTest for the current file"))
keymap("n", "<leader>cpr", ":CompetiTest receive problem<CR>", with_desc(base_opts, "Recieve problem for CompetiTest"))

-- Debug TODO
-- keymap('n', '<F6>', '<cmd> Debug <cr>', opts)

-- LSP
-- Null-ls
keymap("n", "<leader>5", ":lua vim.lsp.buf.format() <CR>", with_desc(base_opts, "Format the current buffer"))

-- Harpoon
keymap("n", "<leader>a", ':lua require("harpoon.mark").add_file() <CR>', with_desc(base_opts, "Add file to Harpoon"))
keymap("n", "<leader>A", ':lua require("harpoon.ui").toggle_quick_menu() <CR>', with_desc(base_opts, "Toggle Harpoon quick menu"))
keymap("n", "<leader>1", ':lua require("harpoon.ui").nav_file(1) <CR>', with_desc(base_opts, "Navigate to Harpoon file 1"))
keymap("n", "<leader>2", ':lua require("harpoon.ui").nav_file(2) <CR>', with_desc(base_opts, "Navigate to Harpoon file 2"))
keymap("n", "<leader>3", ':lua require("harpoon.ui").nav_file(3) <CR>', with_desc(base_opts, "Navigate to Harpoon file 3"))
keymap("n", "<leader>4", ':lua require("harpoon.ui").nav_file(4) <CR>', with_desc(base_opts, "Navigate to Harpoon file 4"))
keymap("n", "<leader>s", ':lua require("harpoon.ui").nav_next() <CR>', with_desc(base_opts, "Navigate to the next Harpoon file"))
keymap("n", "<leader>d", ':lua require("harpoon.ui").nav_prev() <CR>', with_desc(base_opts, "Navigate to the previous Harpoon file"))

-- Telescope bindings
keymap("n", "<leader>f", ":Telescope find_files<CR>", with_desc(base_opts, "Find files"))
keymap("n", "<leader>g", ":Telescope live_grep<CR>", with_desc(base_opts, "Live grep"))
keymap("n", "<leader>b", ":Telescope buffers<CR>", with_desc(base_opts, "List buffers"))
keymap("n", "<leader>r", ":Telescope registers<CR>", with_desc(base_opts, "List registers"))

-- Appearance
keymap("n", "<F7>", ":TransparentToggle<CR>", with_desc(base_opts, "Toggle transparent background"))

-- Keybinding to copy the entire file
keymap('n', '<leader>cf', ':%y+ <CR>', with_desc(base_opts, "Copy the entire file"))

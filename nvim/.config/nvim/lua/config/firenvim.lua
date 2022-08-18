local present, _ = pcall(require, "firenvim")

if not present then
   return
end

local fn = vim.fn
local map = vim.keymap.set

vim.g.firenvim_config = {
  localSettings = {
    [".*"] = {
      cmdline = "neovim",
      -- Only trigger firenvim when <C-E> is pressed in the browser (or whatever
      -- the key is set to in the extension's settings).
      takeover = "never",
    },
  },
}

map("n", "<c-3>", ":wq<CR>")
-- map("n", "<C-Z>", fn["firenvim#hide_frame"])

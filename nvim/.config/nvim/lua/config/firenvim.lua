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
-- let l:bufname=expand('%:t')
-- if l:bufname =~? 'github.com'
--     set ft=markdown
-- elseif l:bufname =~? 'cocalc.com' || l:bufname =~? 'kaggleusercontent.com'
--     set ft=python
-- elseif l:bufname =~? 'localhost'
--     " Jupyter notebooks don't have any more specific buffer information.
--     " If you use some other locally hosted app you want editing function in, set it here.
--     set ft=python
-- elseif l:bufname =~? 'reddit.com'
--     set ft=markdown
-- elseif l:bufname =~? 'stackexchange.com' || l:bufname =~? 'stackoverflow.com'
--     set ft=markdown
-- elseif l:bufname =~? 'slack.com' || l:bufname =~? 'gitter.com'
--     set ft=markdown
-- elseif l:bufname =~? 'leetcode.com'
--     set ft=markdown
-- endif
-- map("n", "<c-3>", ":wq<CR>")
-- map("n", "<C-Z>", fn["firenvim#hide_frame"])

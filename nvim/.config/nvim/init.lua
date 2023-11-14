vim.o.guifont = "JetBrainsMono Nerd Font"
-- require('core')
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({{import = "plugins"}, {import = "plugins.lsp"}, {import = "plugins.cmp"}}, {
  install = {
    colorscheme = { "tokyonight-storm" },
  },
  checker = { enabled = true },
  change_detection = {
        notify = false,
  },
  performance = {
        rtp = {
            disabled_plugins = {
                "gzip",
                "matchit",
                -- "matchparen",
                "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
            },
        },
  },
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})

vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    callback = function()
        require("core.keymaps")
    end,
})

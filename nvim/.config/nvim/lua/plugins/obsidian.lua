return {
    "epwalsh/obsidian.nvim",
    lazy = true,
    workspaces = {
        {
            name = "personal",
            path = "~/Documents/Obsidian-Backup",
            overrides = {
                notes_subdir = "Zettlekasten",
            },
        },
    },
    event = {
        -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
        -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
        "BufReadPre ".. vim.fn.expand "~" .. "~/Documents/Obsidian-Backup/**.md",
        "BufNewFile ".. vim.fn.expand "~" .. "~/Documents/Obsidian-Backup/**.md",
    },
    dependencies = {
        -- Required.
        "nvim-lua/plenary.nvim",

        -- see below for full list of optional dependencies 👇
    },
    mappings = {
        -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
        ["gf"] = {
            action = function()
                return require("obsidian").util.gf_passthrough()
            end,
            opts = { noremap = false, expr = true, buffer = true },
        },
        -- Toggle check-boxes.
        ["<leader>ch"] = {
            action = function()
                return require("obsidian").util.toggle_checkbox()
            end,
            opts = { buffer = true },
        },
    },

    opts = {
        dir = "~/Documents/Obsidian-Backup", -- no need to call 'vim.fn.expand' here

        -- see below for full list of options 👇
    },
}

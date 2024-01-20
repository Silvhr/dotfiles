return {
    "jonahgoldwastaken/copilot-status.nvim",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function()
        require('copilot_status').setup({
            icons = {
                idle = " ",
                error = " ",
                offline = " ",
                warning = "𥉉 ",
                loading = " ",
            },
            debug = false,
        })
    end,
    lazy = true,
    event = "BufReadPost",
}

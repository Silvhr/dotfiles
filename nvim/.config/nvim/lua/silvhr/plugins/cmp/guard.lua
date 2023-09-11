return {
        "nvimdev/guard.nvim",
        event = "BufReadPre",
        config = function()
                local ft = require('guard.filetype'){
                        fmt_on_save = true,
                        lsp_as_default_formatter = false,
                }
                ft('c,cpp'):fmt('clang-format')
                       :lint('clang-tidy')
                ft('rs'):fmt('rustfmt')
                ft('typescript,javascript,typescriptreact'):fmt('prettier')
                ft('sql'):fmt('sql-formatter')
                ft('lua'):fmt('stylua')
        end
}

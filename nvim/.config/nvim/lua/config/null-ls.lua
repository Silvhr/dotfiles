require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.stylua,
        require("null-ls").builtins.diagnostics.eslint,
        require("null-ls").builtins.formatting.prettier,
        require("null-ls").builtins.completion.spell,
        require("null-ls").builtins.formatting.rustywind,
        require("null-ls").builtins.formatting.tidy,
        require("null-ls").builtins.diagnostics.flake8,
        require("null-ls").builtins.formatting.black,
    },
})

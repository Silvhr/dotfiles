--installed locally
require'lspconfig'.clangd.setup{}

--lsp installer
require("nvim-lsp-installer").setup {}
require'lspconfig'.emmet_ls.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.dockerls.setup{}
require'lspconfig'.ltex.setup{}
require'lspconfig'.tsserver.setup{}

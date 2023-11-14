return {
	"williamboman/mason.nvim",
	event = "VeryLazy",
	cmd = "Mason",
	dependencies = {
		"neovim/nvim-lspconfig",
		"williamboman/mason-lspconfig.nvim",
		"jose-elias-alvarez/null-ls.nvim",
		"jayp0521/mason-null-ls.nvim",
	},
	config = function()
		require("mason").setup({})

		require("mason-lspconfig").setup({
			automatic_installation = true,
		})

		require("mason-lspconfig").setup_handlers({
			function()
				local capabilities =
					require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
				capabilities.offsetEncoding = { "utf-16" }

				local servers = {
					astro = {},
					bashls = {},
					clangd = {},
					jdtls = {},
					cssls = {},
					dockerls = {},
					tsserver = {},
					svelte = {},
					eslint = {
						filetypes = {
							"javascript",
							"javascriptreact",
							"javascript.jsx",
							"typescript",
							"typescriptreact",
							"typescript.tsx",
						},
					},
					html = {},
					pyright = {},
					lua_ls = {},
					yamlls = {},
					tailwindcss = {},
					texlab = {},
				}
				local handlers = {
					["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "single" }),
					["textDocument/signatureHelp"] = vim.lsp.with(
						vim.lsp.handlers.signature_help,
						{ border = "single" }
					),
				}
				for server, opts in pairs(servers) do
					opts.capabilities = capabilities
					opts.handlers = handlers
					require("lspconfig")[server].setup(opts)
				end
			end,
		})
		require("mason-null-ls").setup({
			ensure_installed = {

			},
			automatic_installation = true,
			handlers = {},
		})
	end,
}

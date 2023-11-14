return {
	"nvimdev/guard.nvim",
	dependencies = {
		"nvimdev/guard-collection",
	},
	event = "BufReadPre",
	config = function()
		local ft = require("guard.filetype")

		ft("lua"):fmt("stylua")
		ft("c,cpp,json"):fmt("clang-format")
		ft("python"):fmt({ cmd = "black", args = { "--quiet", "-" }, stdin = true })
		ft("sh"):fmt("shfmt")
		ft("javascript,typescript,javascriptreact,typescriptreact,json"):fmt("prettierd")
		ft("tex"):fmt("latexindent")
		ft("java"):fmt("google-java-format")
		require("guard").setup({
			-- the only options for the setup function
			fmt_on_save = true,
			-- Use lsp if no formatter was defined for this filetype
			lsp_as_default_formatter = false,
		})
	end,
}

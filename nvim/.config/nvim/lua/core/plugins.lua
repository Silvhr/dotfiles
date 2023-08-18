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

local plugins = {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "kyazdani42/nvim-web-devicons", name = "web-devicons", lazy = true },
	},
	"lewis6991/gitsigns.nvim",
	"neovim/nvim-lspconfig",
	"lukas-reineke/indent-blankline.nvim",
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		dependencies = "nvim-lua/plenary.nvim",
	},
	"terrortylor/nvim-comment",
	"p00f/cphelper.nvim",
	{ "akinsho/bufferline.nvim", tag = "v2.*", dependencies = { "kyazdani42/nvim-web-devicons", name = "web-devicons" } },
	"kylechui/nvim-surround",
	"nvim-treesitter/nvim-treesitter",
	"williamboman/nvim-lsp-installer",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/cmp-nvim-lsp",
	"saadparwaiz1/cmp_luasnip",
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",
	"akinsho/toggleterm.nvim",
	"windwp/nvim-autopairs",
	"gelguy/wilder.nvim",
	"jose-elias-alvarez/null-ls.nvim",
	"romgrk/fzy-lua-native",
	"folke/which-key.nvim",
	{
		"glacambre/firenvim",
		cond = not not vim.g.started_by_firenvim,
		build = function()
			require("lazy").load({ plugins = "firenvim", wait = true })
			vim.fn["firenvim#install"](0)
		end,
		config = function()
			vim.g.firenvim_config = {
				localSettings = {
					[".*"] = {
						cmdline = "neovim",
						takeover = "never",
					},
				},
			}
		end,
	},
	"ThePrimeagen/harpoon",
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim", "nvim-tree/nvim-web-devicons" },
	},
	-- drip
	"xiyaowong/nvim-transparent",
	-- 'karb94/neoscroll.nvim,
	{ "kyazdani42/nvim-web-devicons", name = "web-devicons" },
	"norcalli/nvim-colorizer.lua",
	--  { 'AlphaTechnolog/pywal.nvim', name = 'pywal' },
	--colorschemes
	"ellisonleao/gruvbox.nvim",
	"folke/tokyonight.nvim",
	"Mofiqul/dracula.nvim",
	--stalking
	"andweeb/presence.nvim",
	"github/copilot.vim",
	--workflow
	"epwalsh/obsidian.nvim",
}

local opts = {}

require("lazy").setup(plugins, opts)

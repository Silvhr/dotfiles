require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use 'norcalli/nvim-colorizer.lua'
	-- use { 'AlphaTechnolog/pywal.nvim', as = 'pywal' }
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'xiyaowong/nvim-transparent'
	-- use 'karb94/neoscroll.nvim'
	-- use {
	-- 	'phaazon/hop.nvim',
	-- 	branch = 'v2',
	-- 	config = function()
	-- 	-- you can configure Hop the way you like here; see :h hop-config
	-- 	require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
	-- 	end
	-- }
	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
	use "lukas-reineke/indent-blankline.nvim"
	use {
	'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'lewis6991/gitsigns.nvim'
	use 'terrortylor/nvim-comment'
	use  'p00f/cphelper.nvim'
	use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
	use 'kylechui/nvim-surround'
	use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
	use { 
		'nvim-treesitter/nvim-treesitter',
		run = ":TSUpdate",
	}
	use 'williamboman/nvim-lsp-installer'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'saadparwaiz1/cmp_luasnip'
	use 'L3MON4D3/LuaSnip'
	use 'rafamadriz/friendly-snippets'
	use 'akinsho/toggleterm.nvim'
	use 'windwp/nvim-autopairs'
	use 'ellisonleao/gruvbox.nvim'
	use 'Mofiqul/dracula.nvim'
        use 'gelguy/wilder.nvim'
        use 'jose-elias-alvarez/null-ls.nvim'
        use 'romgrk/fzy-lua-native'
        use {
            'glacambre/firenvim',
            run = function() vim.fn['firenvim#install'](0) end
        }
        use 'ThePrimeagen/harpoon'
        -- use 'andweeb/presence.nvim'
end)

local pkgs = {
	'nvim-surround',
	'bufferline',
	'nvim_comment',
        'autopairs',
	'gitsigns',
	-- 'neoscroll',
	'nvim-tree',
	'colorizer',
	'lualine',
	'indent_blankline',
	'lsp',
	'treesitter',
	'cmp',
	'toggleterm',
	'colorscheme',
	-- 'harpoon',
	-- 'wilder',
        -- 'null-ls',
        'firenvim'
}

for _, package in pairs(pkgs) do
	require('config.' .. package)
end

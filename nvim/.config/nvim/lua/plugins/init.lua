return {
    "nvim-lua/plenary.nvim", -- lua functions that many plugins use

    --"christoomey/vim-tmux-navigator", -- tmux & split window navigation

    --"inkarkat/vim-ReplaceWithRegister", -- replace with register contents using motion (gr + motion)
    --   "AlphaTechnolog/pywal.nvim",

    "xiyaowong/nvim-transparent",
    "lukas-reineke/indent-blankline.nvim",
    "nvim-telescope/telescope.nvim",
    {
        'xeluxee/competitest.nvim',
        requires = 'muniftanjim/nui.nvim',
        config = function() require('competitest').setup() end
    },
    "folke/tokyonight.nvim",
    "ellisonleao/gruvbox.nvim",
    "Mofiqul/dracula.nvim",
    "ThePrimeagen/harpoon",
    "romgrk/fzy-lua-native",
    -- "folke/zen-mode.nvim",
    "pocco81/true-zen.nvim",
}

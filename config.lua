-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


-- Vim Options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- general
lvim.format_on_save = {
  enabled = true,
  pattern = "*",
  timeout = 1000,
}

--plugins
lvim.plugins = {

  --{ "lunarvim/colorschemes" },
  --{ "arcticicestudio/nord-vim" },

  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },

    -- Colorscheme
    {
      'folke/tokyonight.nvim',
    },
    {
      "goolord/alpha-nvim",
      lazy = true,
    },
    {
      "phaazon/hop.nvim",
      lazy = true,
    },

    -- Language Support
    -- Added this plugin.
    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' },             -- Required
        { 'williamboman/mason.nvim' },           -- Optional
        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },         -- Required
        { 'hrsh7th/cmp-nvim-lsp' },     -- Required
        { 'hrsh7th/cmp-buffer' },       -- Optional
        { 'hrsh7th/cmp-path' },         -- Optional
        { 'saadparwaiz1/cmp_luasnip' }, -- Optional
        { 'hrsh7th/cmp-nvim-lua' },     -- Optional

        -- Snippets
        { 'L3MON4D3/LuaSnip' },             -- Required
        { 'rafamadriz/friendly-snippets' }, -- Optional
      }
    },


    -- Telescope (Fuzzy Finder)
    {
      'nvim-telescope/telescope.nvim',
      lazy = true,
      dependencies = {
        { 'nvim-lua/plenary.nvim' },
      }
    },


    -- Treesitter
    {
      "nvim-treesitter/nvim-treesitter",
    },

    -- Which-key
    {
      'folke/which-key.nvim',
      lazy = true,
    },
  },
}
vim.cmd [[colorscheme tokyonight-night]]

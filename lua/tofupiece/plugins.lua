-- Plugins
require("lazy").setup({
    {"catppuccin/nvim", name="catppuccin", priority = 1000},
    {"nvim-treesitter/nvim-treesitter"},
    {"windwp/nvim-ts-autotag"},
    {"nvim-lualine/lualine.nvim"},
    {"tpope/vim-fugitive"},
    {"mbbill/undotree"},
    {"christoomey/vim-tmux-navigator", lazy = false},
    {"lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {}},
    {'nvim-tree/nvim-web-devicons'},
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
        }
    },
    {'fladson/vim-kitty'},
    {'norcalli/nvim-colorizer.lua'},
    -- lazy.nvim
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
    },
    {
        'numToStr/Comment.nvim',
        lazy = false,
    },
    -- git
    {
        "kdheepak/lazygit.nvim",
        dependencies =  {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim"
        },
    },
    {
        'laytan/tailwind-sorter.nvim',
        dependencies = {'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim'},
        build = 'cd formatter && npm i && npm run build',
        config = true,
    },
    -- telescope
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    },
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.5",
        dependencies = {"nvim-lua/plenary.nvim"}
    },
    -- completion
    {"VonHeikemen/lsp-zero.nvim", branch = "v3.x"},
    {"neovim/nvim-lspconfig"},
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/nvim-cmp"},
    {"L3MON4D3/LuaSnip"},
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},
}, {})



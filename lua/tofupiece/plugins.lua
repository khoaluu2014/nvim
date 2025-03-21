-- Plugins
require("lazy").setup({
	-- Theme
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "rebelot/kanagawa.nvim" },
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
		"sho-87/kanagawa-paper.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	--
	{ "HiPhish/rainbow-delimiters.nvim" },
	{ "nvim-treesitter/nvim-treesitter" },
	{ "windwp/nvim-ts-autotag" },
	{ "nvim-lualine/lualine.nvim" },
	{ "mbbill/undotree" },
	{ "christoomey/vim-tmux-navigator", lazy = false },
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{ "nvim-tree/nvim-web-devicons" },
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
	{ "fladson/vim-kitty" },
	{ "norcalli/nvim-colorizer.lua" },
	-- DAP
	{
		"mfussenegger/nvim-dap",
		dependencies = { "rcarriga/nvim-dap-ui", "nvim-neotest/nvim-nio" },
	},
	-- mini.nvim
	{
		{ "echasnovski/mini.pairs", version = "*" },
		{ "echasnovski/mini.icons", version = "*" },
	},
	{
		"numToStr/Comment.nvim",
		lazy = false,
	},
	-- git
	{
		"kdheepak/lazygit.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"laytan/tailwind-sorter.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
		build = "cd formatter && npm i && npm run build",
		config = true,
	},
	-- telescope
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	-- completion
	{ "neovim/nvim-lspconfig" },
	{ "MunifTanjim/prettier.nvim" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "L3MON4D3/LuaSnip" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "nvimtools/none-ls.nvim", dependencies = {
		"nvimtools/none-ls-extras.nvim",
	} },
	{
		"huggingface/llm.nvim",
	},
}, {})

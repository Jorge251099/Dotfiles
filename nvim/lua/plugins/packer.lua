local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap =
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
end

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- colorschemes
	use("Shatur/neovim-ayu")

	-- File explorer
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
	})

	-- icons
	use("kyazdani42/nvim-web-devicons")

	-- Footer
	use({
		"feline-nvim/feline.nvim",
		requires = {
			"gitsigns.nvim",
			"nvim-web-devicons",
			"lewis6991/gitsigns.nvim",
		},
	})

	-- Lsp config
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "neovim/nvim-lspconfig" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },
			{ "f3fora/cmp-spell" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },

			-- New config
			{ "folke/neodev.nvim" },
			{ "tami5/lspsaga.nvim" }, --> icons for LSP diagnostics
			{ "onsails/lspkind-nvim" },
		},
	})

	-- Linter
	use({ "jose-elias-alvarez/null-ls.nvim" })

	use({
		"lvimuser/lsp-inlayhints.nvim",
		config = function()
			require("lsp-inlayhints").setup()
		end,
	})

	-- git labels
	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("gitsigns").setup()
		end,
	})

	-- indent line
	use("lukas-reineke/indent-blankline.nvim")

	-- treesitter interface
	use("nvim-treesitter/nvim-treesitter")
	use("nvim-treesitter/nvim-tree-docs")
	use("p00f/nvim-ts-rainbow")

	use("rafamadriz/friendly-snippets")
	-- use {'tzachar/cmp-tabnine',
	--      run='./install.sh',
	--      requires = 'hrsh7th/nvim-cmp'
	-- }

	use({ "onsails/lspkind-nvim" })

	use("sidebar-nvim/sidebar.nvim")

	-- fuzzy finder
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-ui-select.nvim")
	use("nvim-telescope/telescope-symbols.nvim")
	use("nvim-telescope/telescope-media-files.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")
	use("nvim-telescope/telescope-dap.nvim")
	use("ibhagwan/fzf-lua")

	-- tagviewer
	use("liuchengxu/vista.vim")

	-- rest
	use({
		"NTBBloodbath/rest.nvim",
		requires = "nvim-lua/plenary.nvim",
	})

	-- todo-comments
	use({
		"folke/todo-comments.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- Trouble
	use("folke/lsp-colors.nvim")
	use({
		"folke/trouble.nvim",
		requires = {
			"kyazdani42/nvim-web-devicons",
		},
	})

	-- Colorizer
	use("norcalli/nvim-colorizer.lua")
	require("colorizer").setup()

	-- Legendary
	-- to use a version
	use({
		"mrjones2014/legendary.nvim",
		tag = "v2.1.0",
		-- sqlite is only needed if you want to use frecency sorting
		-- requires = 'kkharji/sqlite.lua'
	})

	use("karb94/neoscroll.nvim")

	-- Latex
	use("lervag/vimtex")
end)

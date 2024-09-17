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
-----------------------------------------------------------------------------
-- Plugins
local plugins = {
	-- Kanagawa Colour Scheme
	{"rebelot/kanagawa.nvim", name = kanagawa, priority = 1000},

	-- Lua Line
	{'nvim-lualine/lualine.nvim',dependencies = {'nvim-tree/nvim-web-devicons'}},

	-- Telescope
	{'nvim-telescope/telescope.nvim', tag = '0.1.5',dependencies = { 'nvim-lua/plenary.nvim'}},

	-- Tree Sitter
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

	-- LSP Zero
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	-- for :MasonUpdateAll
	{'RubixDev/mason-update-all'},

	-- for dap
	--{'jayp0521/mason-nvim-dap.nvim'},
	-- dapui
	--{ "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} },



	--Vim Be good
	--{'ThePrimeagen/vim-be-good'},

	-- Markdown Preview
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function() vim.fn["mkdp#util#install"]() end,
	},



}


-- Options
local opts = {};


-----------------------------------------------------------------------------
vim.opt.rtp:prepend(lazypath)
require("lazy").setup(plugins, opts)
require("mason").setup()
-----------------------------------------------------------------------------


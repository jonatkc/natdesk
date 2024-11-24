-- Define the plugins table
local plugins = {
	{ "ThePrimeagen/vim-be-good" },
	--themes
	{ "shaunsingh/nord.nvim" },
	{ "VonHeikemen/fine-cmdline.nvim" },
	{ "MunifTanjim/nui.nvim" },
	{ "catppuccin/nvim" },
	{ "rose-pine/neovim", name = "rose-pine" },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equalent to setup({}) function
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
}

-- Return the plugins table
return plugins

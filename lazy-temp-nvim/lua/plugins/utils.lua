-- Define the plugins table
local plugins = {
	{"ThePrimeagen/vim-be-good"},
    --themes
	{"shaunsingh/nord.nvim"}, 
    { "catppuccin/nvim"},
    { "rose-pine/neovim", name = "rose-pine" },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lua',
            'rafamadriz/friendly-snippets',
        },
    }
}


-- Return the plugins table
return plugins


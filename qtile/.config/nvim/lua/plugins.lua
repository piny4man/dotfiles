return {
    {
        "catppuccin/nvim",
        name = "catppuccin-macchiato",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme catppuccin-macchiato")
        end
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            signs = true,
            sign_priority = 8
        },
    },
    {
        "folke/neodev.nvim", opts = {}
    },
    -- Fuzzy finder
    {
        'nvim-telescope/telescope.nvim',
        branch = '*',
    },
    -- Parser
    {
        'nvim-treesitter/nvim-treesitter',
    },
    -- Shortcuts help
    {
        'folke/which-key.nvim',
        lazy = true,
    },
    -- Buffer line (tabs)
    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
    },
    -- Status line
    {
        'nvim-lualine/lualine.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
    },
    -- File Tree
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },
    {
        'goolord/alpha-nvim',
        lazy = true,
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    },
    -- Session management. This saves your session in the background,
    -- keeping track of open buffers, window arrangement, and more.
    -- You can restore sessions when returning through the dashboard.
    {
        "folke/persistence.nvim",
        event = "BufReadPre",
        opts = {
            options = {
                "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp"
            }
        },
        -- stylua: ignore
        keys = {
            { "<leader>qs", function() require("persistence").load() end,                desc = "Restore Session" },
            { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
            {
                "<leader>qd",
                function() require("persistence").stop() end,
                desc =
                "Don't Save Current Session"
            },
        },
    },
    -- library used by other plugins
    { "nvim-lua/plenary.nvim", lazy = true },
    {
        "lewis6991/gitsigns.nvim",
    },
    -- Color highlighter
    {
        'NvChad/nvim-colorizer.lua'
    },
    -- Rendering improvements
    {
        'max397574/better-escape.nvim',
    },
    -- Rust plugins
    {
        'rust-lang/rust.vim',
        ft = { 'rust', 'toml', },
        init = function()
            vim.g.rustfmt_autosave = 1
        end
    },
    {
        'simrat39/rust-tools.nvim',
        ft = 'rust',
        dependencies = 'neovim/nvim-lspconfig',
    },
    {
        'saecki/crates.nvim',
        ft = { 'rust', 'toml', },
        config = function(_, opts)
            local crates = require('crates')
            crates.setup(opts)
            crates.show()
        end,
    },
    -- Debugging
    {
        'mfussenegger/nvim-dap',
        lazy = true
    },
    {
        'rcarriga/nvim-dap-ui',
        lazy = true
    },
}

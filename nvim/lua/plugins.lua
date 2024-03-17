return {
    {
        'catppuccin/nvim',
        name = 'catppuccin-macchiato',
        priority = 1000,
    },
    {
        'folke/todo-comments.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {
            signs = true,
            sign_priority = 8
        },
    },
    -- Notifications
    {
        'rcarriga/nvim-notify',
        config = function()
            vim.notify = require("notify")
        end
    },
    -- Auto pair
    {
        'echasnovski/mini.pairs', version = '*'
    },
    -- Movement
    {
        'echasnovski/mini.move', version = '*'
    },
    -- Trailspace
    {
        'echasnovski/mini.trailspace', version = '*'
    },
    -- Multi selection
    {
        'mg979/vim-visual-multi',
        branch = 'master'
    },
    -- Troubles messages in a pretty way
    {
        'folke/trouble.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    -- Other DEV dependencies
    {
        'folke/neodev.nvim', opts = {}
    },
    -- Fuzzy finder
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        requires = { { 'nvim-lua/plenary.nvim' } }
    },
    -- Parser
    {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    },
    {
        'nvim-treesitter/nvim-treesitter-textobjects',
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
        'nvim-tree/nvim-tree.lua',
        version = '*',
        lazy = false,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },
    -- Alpha dashboard
    {
        'goolord/alpha-nvim',
        lazy = true,
    },
    -- Comments toggler
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
    },
    -- LSP configuration
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
    {
        'j-hui/fidget.nvim',
        tag = 'legacy',
        event = 'LspAttach',
    },
    -- Session management. This saves your session in the background,
    {
        'rmagatti/auto-session',
    },
    -- library used by other plugins
    { 'nvim-lua/plenary.nvim', lazy = true },
    {
        'lewis6991/gitsigns.nvim',
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
    {
        'theHamsta/nvim-dap-virtual-text',
        lazy = true
    },
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
            'onsails/lspkind.nvim',
            'hrsh7th/cmp-emoji',
            'zbirenbaum/copilot-cmp',
            'lukas-reineke/cmp-rg',
        }
    },
    -- Copilot
    {
        'zbirenbaum/copilot.lua'
    },
    -- Trouble: errors, warnings and hints
    {
        'folke/trouble.nvim',
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    -- Indent lines
    {
        'lukas-reineke/indent-blankline.nvim',
        main = "ibl",
        opts = {}
    },
    -- Html autoclose tag
    {
        'windwp/nvim-ts-autotag'
    }
}

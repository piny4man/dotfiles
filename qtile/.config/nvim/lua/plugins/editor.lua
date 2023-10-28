return {

    -- search/replace in multiple files
--    "nvim-pack/nvim-spectre",
    

  -- git signs highlights text that has changed since the list
  -- git commit, and also lets you interactively stage & unstage
  -- hunks in a commit.
    --    "lewis6991/gitsigns.nvim",


  -- Automatically highlights other instances of the word under your cursor.
  -- This works with LSP, Treesitter, and regexp matching to find the other
  -- instances  
    -- "RRethy/vim-illuminate",


  -- buffer remove
--    "echasnovski/mini.bufremove",



  -- better diagnostics list and others
--   "folke/trouble.nvim",


    -- Finds and lists all of the TODO, HACK, BUG, etc comment
    -- in your project and loads them into a browsable list.
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            signs = true,
            sign_priority = 8
        },
    },
    -- Fuzzy finder
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
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
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
    {
        'goolord/alpha-nvim',
        lazy = true,
    },
}

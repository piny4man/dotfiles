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
        }
    },
}

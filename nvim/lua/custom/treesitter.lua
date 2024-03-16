require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "rust", "toml", "lua", "luadoc", "vim", "vimdoc", "query", "typescript", "tsx",
        "javascript", "python",
        "tsx", "yaml",
        "html", "css", "bash", "prisma", "graphql", "markdown", "markdown_inline", "dockerfile", "gitignore", "json",
        "json5", "comment",
        "svelte", "astro", "sql", "regex", "angular" },
    sync_install = true,
    auto_install = true,
    ignore_install = { "" },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
    autopais = {
        enabled = true
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    },
    textobjects = {
        select = {
            enabled = true,
            lookahead = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                -- You can optionally set descriptions to the mappings (used in the desc parameter of
                -- nvim_buf_set_keymap) which plugins like which-key display
                ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                -- You can also use captures from other query groups like `locals.scm`
                ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
            },
            selection_modes = {
                ['@parameter.outer'] = 'v', -- charwise
                ['@function.outer'] = 'V',  -- linewise
                ['@class.outer'] = '<c-v>', -- blockwise
            },
            include_surrounding_whitespace = true,
        },
    },
}

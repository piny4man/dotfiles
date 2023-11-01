require'nvim-treesitter.configs'.setup {
    build = ":TSUpdate",
    ensure_installed = { "rust", "lua", "vim", "vimdoc", "query", "typescript", "javascript", "python", "tsx", "yaml", "html", "css", "bash", "prisma", "graphql", "markdown", "markdown_inline", "dockerfile", "gitignore", "json", "svelte", "astro" },
    sync_install = false,
    auto_install = true,
    ignore_install = { "" },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}


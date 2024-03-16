require("nvim-tree").setup {
    renderer = {
        indent_markers = {
            enable = true
        },
        highlight_git = true,
        icons = {
            show = {
                git = true,
            },
        },
        group_empty = true,
    },
    view = {
        side = "right",
    },
    filters = {
        custom = { "^.git$" },
        dotfiles = false,
    },
    git = {
        enable = true,
        ignore = false,
    },
}

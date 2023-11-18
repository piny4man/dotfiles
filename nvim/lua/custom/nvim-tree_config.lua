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
    },
    view = {
        side = "left",
    },
    filters = { custom = { "^.git$" } },
}

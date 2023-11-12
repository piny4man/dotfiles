require("copilot").setup({
    panel = {
        enabled = false,
        auto_refresh = false,
        keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<C-CR>",
            refresh = "gr",
            open = "<M-CR>"
        },
        layout = {
            position = 'right',
            ratio = 0.5,
        },
    },
    suggestion = {
        enabled = false,
        auto_trigger = false,
        debounce = 75,
        keymap = {
            accept = "<Shift-CR>",
            accept_word = false,
            accept_line = false,
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<Shift-q>",
        },
    },
    filetypes = {
        yaml = false,
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
    },
    copilot_node_command = 'node', -- Node.js version must be > 18.x
    server_opts_overrides = {},
})

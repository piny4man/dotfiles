-- vim.opt.termguicolors = true
local bufferline = require('bufferline')
bufferline.setup {
    options = {
        mode = 'buffers',
        style_preset = bufferline.style_preset.default,
        themable = true,
        numbers = 'none',
        close_command = 'bdelete! %d',    -- can be a string | function, | false see "Mouse actions"
        left_mouse_command = 'buffer %d', -- can be a string | function, | false see "Mouse actions"
        right_mouse_command = 'vertical sbuffer %d',
        middle_mouse_command = 'bdelete! %d',
        indicator = {
            style = 'none',
        },
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 25,
        max_prefix_length = 15,
        truncate_names = false,
        tab_size = 28,
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = true,
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_tab_indicators = false,
        show_duplicate_prefix = true,
        persis_buffer_sort = true,
        move_wraps_at_ends = false,
        offsets = {
            {
                filetype = "NvimTree",
                separator = false,
            }
        },
        separator_style = { "", "" },
        enforce_regular_tabs = true,
        always_show_bufferline = true,
        hover = {
            enabled = true,
            delay = 150,
            reveal = { 'close' }
        },
        sort_by = 'extension',
    },
    highlights = {
        fill = {
            fg = '#b7bdf8',
            bg = '#363a4f',
        },
        background = {
            fg = '#a5adcb',
            bg = '#181926',
        },
        tab = {
            fb = '#a5adcb',
            bg = '#181926',
        },
        buffer_visible = {
            fg = '#a5adcb',
            bg = '#181926',
        },
        close_button = {
            fg = '#c6a0f6',
            bg = '#181926',
        },
        close_button_selected = {
            fg = '#c6a0f6',
        },
        warning = {
            fg = '#eed49f',
            bg = '#181926',
        },
        warning_selected = {
            fg = '#eed49f',
        },
        error = {
            fg = '#ed8796',
            bg = '#181926',
        },
        error_selected = {
            fg = '#ed8796',
        },
        hint = {
            fg = '#8bd5ca',
            bg = '#181926'
        },
        hint_selected = {
            fg = '#8bd5ca',
        },
        modified = {
            fg = '#b7bdf8',
            bg = '#181926',
        },
        modified_visible = {
            fg = '#b7bdf8',
            bg = '#181926',
        },
        modified_selected = {
            fg = '#b7dbf8',
        },
        trunc_marker = {
            fg = '#b7bdf8',
            bg = '#181926',
        }
    }
}

-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.use_fancy_tab_bar = false
-- This is where you actually apply your config choices

-- WINDOW
config.window_frame = {
    active_titlebar_bg = '#b7bdf8',
    inactive_titlebar_bg = '#8087a2'
}
config.window_padding = {
    left = '0.5cell',
    right = '0.5cell',
    top = 0,
    bottom = 0,
}
config.window_background_opacity = 0.95

-- THEME
config.color_scheme = 'Catppuccin Macchiato'

-- FONT
config.font = wezterm.font '0xProto Nerd Font Mono'
config.font_size = 12.0
config.text_background_opacity = 1
config.harfbuzz_features = { 'zero', 'ss01', 'cv05' }

-- CURSOR
config.default_cursor_style = 'SteadyUnderline'

-- KEYMAPS
config.leader = { key = "LeftShift", mods = "CTRL", timeout_milliseconds = 100 }
config.keys = {
    {
        key = 'w',
        mods = 'LEADER',
        action = wezterm.action.CloseCurrentTab { confirm = true },
    },
    {
        key = 't',
        mods = 'LEADER',
        action = wezterm.action.SpawnTab 'CurrentPaneDomain',
    },
    {
        key = 'k',
        mod = 'LEADER',
        action = wezterm.action.CloseCurrentPane { confirm = true },
    },
}

return config

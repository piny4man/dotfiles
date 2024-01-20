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
config.window_frame = {
    active_titlebar_bg = '#181926',
    inactive_titlebar_bg = '#363a4f'
}
config.color_scheme = 'Catppuccin Macchiato'

config.font = wezterm.font "0xProto Nerd Font Mono"
config.text_background_opacity = 0.75

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
        key = 'PageUp',
        mod = 'LEADER',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
        key = 'PageDown',
        mod = 'LEADER',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }
    },
    {
        key = 'k',
        mod = 'LEADER',
        action = wezterm.action.CloseCurrentPane { confirm = true },
    },
}

return config

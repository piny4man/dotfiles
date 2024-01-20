# Qtile keybindings

from libqtile.config import Key
from libqtile.lazy import lazy

mod = "mod4"

keys = [
    # A list of available commands that can be bound to keys can be found
    # at https://docs.qtile.org/en/latest/manual/config/lazy.html
    # Switch between windows
    Key([mod], 'Left', lazy.layout.left(), desc='Move focus to left'),
    Key([mod], 'Right', lazy.layout.right(), desc='Move focus to right'),
    Key([mod], 'Down', lazy.layout.down(), desc='Move focus down'),
    Key([mod], 'Up', lazy.layout.up(), desc='Move focus up'),
    Key([mod], 'space', lazy.layout.next(),
        desc='Move window focus to other window'),
    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, 'shift'], 'Left', lazy.layout.shuffle_left(),
        desc='Move window to the left'),
    Key([mod, 'shift'], 'Right', lazy.layout.shuffle_right(),
        desc='Move window to the right'),
    Key([mod, 'shift'], 'Down', lazy.layout.shuffle_down(), desc='Move window down'),
    Key([mod, 'shift'], 'Up', lazy.layout.shuffle_up(), desc='Move window up'),
    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, 'control'], 'Left', lazy.layout.grow_left(),
        desc='Grow window to the left'),
    Key([mod, 'control'], 'Right', lazy.layout.grow_right(),
        desc='Grow window to the right'),
    Key([mod, 'control'], 'Down', lazy.layout.grow_down(), desc='Grow window down'),
    Key([mod, 'control'], 'Up', lazy.layout.grow_up(), desc='Grow window up'),
    Key([mod], 'n', lazy.layout.normalize(), desc='Reset all window sizes'),
    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key(
        [mod, 'shift'],
        'Return',
        lazy.layout.toggle_split(),
        desc='Toggle between split and unsplit sides of stack',
    ),
    Key([mod], 'Return', lazy.spawn('wezterm'), desc='Launch terminal'),
    # Toggle between different layouts as defined below
    Key([mod], 'Tab', lazy.next_layout(), desc='Toggle between layouts'),
    Key([mod], 'w', lazy.window.kill(), desc='Kill focused window'),
    Key([mod, 'control'], 'r', lazy.reload_config(), desc='Reload the config'),
    Key([mod, 'control'], 'q', lazy.shutdown(), desc='Shutdown Qtile'),

    # Lock screen
    Key([mod], 'l', lazy.spawn('betterlockscreen --lock dimpixel')),

    # Flameshot
    Key([mod], 's', lazy.spawn('flameshot gui')),

    # Rofi
    Key([mod], 'space', lazy.spawn('rofi -show drun -show-icons')),
    Key([mod, 'control'], 'space', lazy.spawn('rofi -show run -show-icons')),
    Key([mod, 'shift'], 'space', lazy.spawn('rofi -show')),

    # Browser
    Key([mod], 'b', lazy.spawn('firefox-developer-edition')),
    Key([mod, 'shift'], 'b', lazy.spawn('brave')),

    # Notes
    Key([mod], 'n', lazy.spawn('standard-notes')),

    # Volume
    Key([], 'XF86AudioLowerVolume', lazy.spawn('pamixer --decrease 2')),
    Key([], 'XF86AudioRaiseVolume', lazy.spawn('pamixer --increase 2')),
    Key([], 'XF86AudioMute', lazy.spawn('pamixer --toggle-mute')),

    # Brightness
    Key([], 'XF86MonBrightnessUp', lazy.spawn('brightnessctl set +5%')),
    Key([], 'XF86MonBrightnessDown', lazy.spawn('brightnessctl set 5%-')),

    # Touchpad
    # Key([], 'XF86TouchpadToggle', lazy.spawn('~/.config/qtile/touchpad-toggle.sh')),

    # File System
    Key([mod], 'e', lazy.spawn('thunar')),
]

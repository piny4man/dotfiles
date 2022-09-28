from libqtile.config import Drag, Click
from libqtile.command import lazy
from .keys import mod

# Drag floating layouts.
mouse = [
    Drag([mod], 'Button1', lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], 'Button3', lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod, 'shift'], 'Button1', lazy.window.toggle_floating()),
]

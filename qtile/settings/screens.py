# Multimonitor support

from libqtile.config import Screen
from libqtile import bar
from libqtile.log_utils import logger
from .widgets import primary_widgets

screens = [
    Screen(
        top=bar.Bar(
            primary_widgets,
            26,
            # border_width=[2, 0, 2, 0],  # Draw top and bottom borders
            # border_color=['ff00ff', '000000', 'ff00ff', '000000']  # Borders are magenta
        ),
    ),
]
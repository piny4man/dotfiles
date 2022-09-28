from libqtile import widget
from os import path
from .path import qtile_path
from .theme import colors

def base(fg='text', bg='dark'):
    return {
        'foreground': colors[fg],
        'background': colors[bg]
    }

def workspaces():
    return [
        widget.GroupBox(
            **base(fg='light'),
            font='Hack Nerd Font',
            center_aligned=True,
            margin_y=3,
            margin_x=0,
            padding_y=8,
            padding_x=8,
            borderwidth=1,
            active=colors['active'],
            inactive=colors['inactive'],
            rounded=False,
            highlight_method='block',
            urgent_alert_method='block',
            urgent_border=colors['urgent'],
            this_current_screen_border=colors['focus'],
            this_screen_border=colors['grey'],
            other_current_screen_border=colors['dark'],
            other_screen_border=colors['dark'],
            disable_drag=True
        ),
        widget.WindowName(
            foreground=colors['color5'],
            background=colors['dark'],
            font='Fira Code Bold',
            fontsize=14,
            padding=5
        )
    ]

primary_widgets = [
    *workspaces(),
    widget.Image(
        filename=path.join(qtile_path, 'img', 'bar5.png')
    ),
    widget.TextBox(
        foreground=colors['color1'],
        background=colors['color5'],
        fontsize=18,
        padding=4,
        text=''
    ),
    widget.CheckUpdates(
        background=colors['color5'],
        colour_have_updates=colors['color1'],
        colour_no_updates=colors['color1'],
        no_update_string='0',
        display_format='{updates}',
        update_interval=1800,
        custom_command='checkupdates',
        padding=4
    ),
    widget.Image(
        filename=path.join(qtile_path, 'img', 'bar4.png')
    ),
    widget.CurrentLayoutIcon(
        foreground=colors['color1'],
        background=colors['color4'],
        scale=0.65
    ),
    widget.CurrentLayout(
        foreground=colors['color1'],
        background=colors['color4'],
        padding=5
    ),
    # widget.CPUGraph(),
    # widget.MemoryGraph(),
    widget.Image(
        filename=path.join(qtile_path, 'img', 'bar3.png')
    ),
    widget.TextBox(
        foreground=colors['color1'],
        background=colors['color3'],
        fontsize=24,
        padding=8,
        text=''
    ),
    widget.Clock(
        foreground=colors['color1'],
        background=colors['color3'],
        format='%d/%m/%Y - %H:%M'
    ),
    widget.Image(
        filename=path.join(qtile_path, 'img', 'bar2.png')
    ),
    widget.Systray(
        background=colors['color2'],
        foreground=colors['color1'],
        padding=6
    )
]

widget_defaults = dict(
    font='Fira Code',
    fontsize=16,
    padding=2,
)
extension_defaults = widget_defaults.copy()

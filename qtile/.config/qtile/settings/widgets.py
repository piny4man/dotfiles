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
            **base(fg='text'),
            font='Hack Nerd Font Regular',
            center_aligned=True,
            margin_y=3,
            margin_x=0,
            padding_y=8,
            padding_x=8,
            borderwidth=2,
            active=colors['text'],
            inactive=colors['inactive'],
            rounded=False,
            highlight_method='block',
            urgent_alert_method='line',
            urgent_border=colors['urgent'],
            this_current_screen_border=colors['activeBg'],
            this_screen_border=colors['unfocusedActiveBg'],
            other_current_screen_border=colors['dark'],
            other_screen_border=colors['dark'],
            disable_drag=True,
        ),
        widget.WindowName(
            foreground=colors['grey'],
            background=colors['dark'],
            font='Hack Nerd Font',
            fontsize=14,
            padding=5
        )
    ]


primary_widgets = [
    widget.Image(
        filename=path.join(qtile_path, 'img', 'pineskull-mauve.png'),
        margin_x=8,
        background=colors['dark']
    ),
    *workspaces(),
    widget.NetGraph(
        graph_color=colors['color4'],
        fill_color=colors['color4'],
        background=colors['dark'],
        border_color=colors['dark'],
        line_width=1,
        border_width=1,
        margin_y=3
    ),
    widget.CPUGraph(
        graph_color=colors['color3'],
        fill_color=colors['color3'],
        background=colors['dark'],
        border_color=colors['dark'],
        border_width=1,
        margin_y=4
    ),
    widget.MemoryGraph(
        graph_color=colors['color2'],
        fill_color=colors['color2'],
        background=colors['dark'],
        border_color=colors['dark'],
        border_width=1,
        margin_y=3
    ),
    widget.Clock(
        foreground=colors['text'],
        background=colors['dark'],
        format='%a %d %b %H:%M',
        padding=8
    ),
    widget.TextBox(
        foreground=colors['text'],
        background=colors['dark'],
        fontsize=25,
        padding=4,
        text=''
    ),
    widget.CheckUpdates(
        background=colors['dark'],
        colour_have_updates=colors['text'],
        colour_no_updates=colors['grey'],
        no_update_string='0',
        display_format='{updates}',
        update_interval=1800,
        custom_command='checkupdates',
        padding=4
    ),
    widget.CurrentLayoutIcon(
        foreground=colors['text'],
        background=colors['dark'],
        scale=0.65
    ),
    widget.Systray(
        background=colors['dark'],
        foreground=colors['dark'],
        padding=8,
        icon_size=16,
        opaticy=0
    ),
]

secondary_widgets = [
    widget.Image(
        filename=path.join(qtile_path, 'img', 'pineskull-mauve.png'),
        margin_x=8,
        background=colors['dark']
    ),
    *workspaces(),
    widget.OpenWeather(
        location='Sant Pere de Ribes',
        app_key='c8ddca884325c9cb88de485e5a89baa5',
        background=colors['color3'],
        foreground=colors['dark'],
        format='{icon} {temp}°C {humidity}% ',
        margin_x=8,
    ),
    widget.CurrentLayoutIcon(
        foreground=colors['text'],
        background=colors['dark'],
        scale=0.65
    ),
    widget.Clock(
        foreground=colors['text'],
        background=colors['dark'],
        format='%H:%M'
    ),
]

widget_defaults = dict(
    font='Hack Nerd Font Mono',
    fontsize=16,
    padding=2,
)
extension_defaults = widget_defaults.copy()

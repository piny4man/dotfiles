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
            font='Hack Nerd Font',
            center_aligned=True,
            margin_y=3,
            margin_x=0,
            padding_y=8,
            padding_x=8,
            borderwidth=2,
            active=colors['active'],
            inactive=colors['inactive'],
            rounded=False,
            highlight_method='line',
            urgent_alert_method='line',
            urgent_border=colors['urgent'],
            this_current_screen_border=colors['focus'],
            this_screen_border=colors['grey'],
            other_current_screen_border=colors['dark'],
            other_screen_border=colors['dark'],
            disable_drag=True,
        ),
        widget.WindowName(
            foreground=colors['grey'],
            background=colors['dark'],
            font='Fira Code Bold',
            fontsize=14,
            padding=5
        )
    ]

primary_widgets = [
    widget.Image(
        filename=path.join(qtile_path, 'img', 'pineskull_nord.png'),
        margin_x=8,
        background=colors['dark']
    ),
    *workspaces(),
    widget.Image(
        filename=path.join(qtile_path, 'img', 'bar4.png')
    ),
    widget.TextBox(
        foreground=colors['dark'],
        background=colors['color4'],
        fontsize=18,
        padding=4,
        text=''
    ),
    widget.CheckUpdates(
        background=colors['color4'],
        colour_have_updates=colors['dark'],
        colour_no_updates=colors['color1'],
        no_update_string='0',
        display_format='{updates}',
        update_interval=1800,
        custom_command='checkupdates',
        padding=4
    ),
    widget.Image(
        filename=path.join(qtile_path, 'img', 'bar3.png')
    ),
    widget.Clock(
        foreground=colors['dark'],
        background=colors['color3'],
        format='%d/%m/%Y - %H:%M'
    ),
    widget.Image(
        filename=path.join(qtile_path, 'img', 'bar2.png')
    ),
    widget.Systray(
        background=colors['color2'],
        foreground=colors['dark'],
        padding=6,
        icon_size=18
    ),
    widget.Image(
        filename=path.join(qtile_path, 'img', 'bar1.png')
    ),
    widget.CurrentLayoutIcon(
        foreground=colors['dark'],
        background=colors['color1'],
        scale=0.65
    )
]

secondary_widgets = [
    widget.Image(
        filename=path.join(qtile_path, 'img', 'pineskull_nord.png'),
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
    widget.Image(
        filename=path.join(qtile_path, 'img', 'bar3_nord.png')
    ),
    widget.OpenWeather(
        location='Sant Pere de Ribes',
        app_key='c8ddca884325c9cb88de485e5a89baa5',
        background=colors['color3'],
        foreground=colors['dark'],
        format='{icon} {temp}°C {humidity}% ',
        margin_x=8,
    ),
    widget.Image(
        filename=path.join(qtile_path, 'img', 'bar2.png')
    ),
    widget.Clock(
        foreground=colors['dark'],
        background=colors['color2'],
        format='%H:%M'
    ),
    widget.Image(
        filename=path.join(qtile_path, 'img', 'bar1.png')
    ),
    widget.CurrentLayoutIcon(
        background=colors['color1'],
        foreground=colors['text'],
        scale=0.65
    )
]

widget_defaults = dict(
    font='Fira Code',
    fontsize=18,
    padding=2,
)
extension_defaults = widget_defaults.copy()

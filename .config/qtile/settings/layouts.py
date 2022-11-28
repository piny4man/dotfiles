from libqtile import layout
from libqtile.config import Match
from .theme import colors

# Layouts and layout rules
layout_conf = {
    'border_focus': '#ffbf00',
    'border_normal': colors['dark'],
    'border_width': 1,
    'margin': 2,
    'grow_amount': 1,
}

layouts = [
    layout.Columns(**layout_conf),
    layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(**layout_conf),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    layout.VerticalTile(**layout_conf),
    # layout.Zoomy(),
]

floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class='confirmreset'),  # gitk
        Match(wm_class='makebranch'),  # gitk
        Match(wm_class='maketag'),  # gitk
        Match(wm_class='ssh-askpass'),  # ssh-askpass
        Match(title='branchdialog'),  # gitk
        Match(title='pinentry'),  # GPG key password entry
    ],
    border_focus=colors['color4'][0]
)

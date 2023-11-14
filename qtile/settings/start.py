import subprocess

from libqtile import hook
from os import path
from .path import qtile_path

@hook.subscribe.startup_once
def autostart():
    home = path.join(qtile_path, 'autostart.sh')
    subprocess.Popen([home])

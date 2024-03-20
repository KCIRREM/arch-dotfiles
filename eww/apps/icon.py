import gi
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk

icon_name = 'Alacritty'
icon_theme = Gtk.IconTheme.get_default()
icon = icon_theme.lookup_icon(icon_name,128,0)
icon_path = (icon.get_filename())
with open("app_list","a") as file:
    file.write(icon_path)

    
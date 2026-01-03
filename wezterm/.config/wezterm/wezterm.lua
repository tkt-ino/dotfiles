local wezterm = require 'wezterm'

local config = wezterm.config_builder()
config.automatically_reload_config = true

config.color_scheme = 'Kanagawa (Gogh)'

config.font_size = 15.0
config.font = wezterm.font 'Hack Nerd Font Mono'

config.use_ime = true
config.window_background_opacity = 0.90
config.window_decorations = 'RESIZE'
config.hide_tab_bar_if_only_one_tab = true

------------------------------------------
--- colors
------------------------------------------
config.colors = require('colors').colors

------------------------------------------
--- keybinds
------------------------------------------
config.leader = { key = 'Space', mods = 'CTRL|SHIFT' }
config.keys = require('keybinds').keys
config.key_tables = require('keybinds').key_tables

return config

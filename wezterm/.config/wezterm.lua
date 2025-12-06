-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Autoreload
config.automatically_reload_config = true

-- This is where you actually apply your config choices
config.color_scheme = 'Kanagawa (Gogh)'
-- config.default_prog = { "powershell" }
config.window_background_opacity = 0.80
config.win32_system_backdrop = "Acrylic"
config.window_decorations = "RESIZE"

-- config.font = wezterm.font("Hack Nerd Font Mono")

config.window_frame = {
	inactive_titlebar_bg = "none",
	active_titlebar_bg = "none",
}

-- config.disable_default_key_bindings = true
config.keys = {
	{ key = "h", mods = "CTRL|ALT", action = act.ActivateTabRelative(-1) },
	{ key = "l", mods = "CTRL|ALT", action = act.ActivateTabRelative(1) },
	{
		key = "r",
		mods = "CTRL|ALT",
		action = wezterm.action.PromptInputLine {
			description = "Rename tab",
			action = wezterm.action_callback(function(window, pane, line)
				if line then
					window:active_tab():set_title(line)
				end
			end),
		},
	},
	{
		key = "t",
		mods = "CTRL|ALT",
		action = act.SpawnTab "CurrentPaneDomain",
	},
}

-- and finally, return the configuration to wezterm
return config

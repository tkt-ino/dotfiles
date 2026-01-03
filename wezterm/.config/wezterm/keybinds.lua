local wezterm = require 'wezterm'
local act = wezterm.action

return {
	keys = {
		{ key = 'h', mods = 'CTRL|ALT',   action = act.ActivateTabRelative(-1) },
		{ key = 'l', mods = 'CTRL|ALT',   action = act.ActivateTabRelative(1) },
		{ key = 's', mods = 'LEADER',     action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
		{ key = 'v', mods = 'LEADER',     action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
		{ key = 'n', mods = 'LEADER',     action = act.SpawnTab 'CurrentPaneDomain' },
		{ key = 'h', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Left' },
		{ key = 'j', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Down' },
		{ key = 'k', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Up' },
		{ key = 'l', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Right' },
	},
	key_tables = {}
}

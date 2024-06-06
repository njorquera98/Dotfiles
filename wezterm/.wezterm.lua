local wezterm = require("wezterm")

return {
	font = wezterm.font("Hack Nerd Font"),
	font_size = 12,
	color_scheme = "Monokai Remastered",
	window_close_confirmation = "NeverPrompt",
	keys = {
		{
			key = "k",
			mods = "CTRL|SHIFT",
			action = wezterm.action.DisableDefaultAssignment,
		},
	},
	window_background_opacity = 0.95,
	hide_tab_bar_if_only_one_tab = true,
	scrollback_lines = 5000,
}

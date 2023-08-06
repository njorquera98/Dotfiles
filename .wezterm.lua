local wezterm = require "wezterm"

return {
  --font = wezterm.font "Hack",
  font_size = 13,
  color_scheme = 'Monokai Remastered',
  keys = {
    {
      key = "k",
      mods = "CTRL|SHIFT",
      action = wezterm.action.DisableDefaultAssignment,
    }
  },
  window_background_opacity = .95,
  hide_tab_bar_if_only_one_tab = true,
  scrollback_lines = 5000,
}

-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.color_scheme = 'Catppuccin Macchiato'
config.font = wezterm.font 'FiraCode Nerd Font'
config.font_size = 16.0
config.default_cursor_style = 'SteadyBar'
config.cursor_thickness = '1.4pt'
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"

-- and finally, return the configuration to wezterm
return config
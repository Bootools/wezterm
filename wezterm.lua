-- Pull in the wezterm API
local wezterm = require("wezterm")

-- Configuration funtion variable.
local config = wezterm.config_builder()

-- Powerline symbol variables used in the integrated tab bar buttons
local CLOSE_BUTTON = wezterm.nerdfonts.md_window_close
local MAXIMIZE_BUTTON = wezterm.nerdfonts.md_window_maximize
local MINIMIZE_BUTTON = wezterm.nerdfonts.md_window_minimize

-- This is where you actually apply your config choices
config.color_scheme = "OneHalfDark"
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 16.0
config.default_cursor_style = "SteadyBar"
config.cursor_thickness = "1.4pt"
config.use_fancy_tab_bar = false
config.integrated_title_button_style = "Windows"

config.tab_bar_style = {
	window_close = wezterm.format({
		{ Text = " " .. CLOSE_BUTTON .. " " },
	}),
	window_close_hover = wezterm.format({
		{ Text = " " .. CLOSE_BUTTON .. " " },
	}),
	window_maximize = wezterm.format({
		{ Text = " " .. MAXIMIZE_BUTTON .. " " },
	}),
	window_maximize_hover = wezterm.format({
		{ Text = " " .. MAXIMIZE_BUTTON .. " " },
	}),
	window_hide = wezterm.format({
		{ Text = " " .. MINIMIZE_BUTTON .. " " },
	}),
	window_hide_hover = wezterm.format({
		{ Text = " " .. MINIMIZE_BUTTON .. " " },
	}),
}

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- and finally, return the configuration to wezterm
return config

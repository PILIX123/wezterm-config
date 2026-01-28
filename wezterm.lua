-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()
config.default_prog = { "powershell" }
config.font = wezterm.font("JetBrainsMono NF")
config.font_size = 11.25

local mux = wezterm.mux
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

return config

local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font 'JetBrains Mono'
config.color_scheme = 'AdventureTime'
config.window_background_opacity = 0.88
config.default_prog = { 'nu', '-l' }

return config

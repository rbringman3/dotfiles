-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.color_scheme = 'dayfox'
config.font = wezterm.font 'Inconsolata Nerd Font'
config.font_size = 17
config.enable_tab_bar = false

-- and finally, return the configuration to wezterm
return config


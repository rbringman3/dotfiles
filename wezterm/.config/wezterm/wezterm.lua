-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- right status thingie
wezterm.on('update-right-status', function(window, pane)
    local date = wezterm.strftime '%a %b %d, %Y %H:%M:%S %p   '

    -- Make it italic and underlined
    window:set_right_status(wezterm.format {
        { Text = '  WezTerm - ' .. date },
    })
end)

-- mess with the title
wezterm.on('format-window-title', function(tab, pane, tabs, panes, config)
    local zoomed = ''
    if tab.active_pane.is_zoomed then
        zoomed = '[Z] '
    end

    local index = ''
    if #tabs > 1 then
        index = string.format('[%d/%d] ', tab.tab_index + 1, #tabs)
    end

    return zoomed .. index .. tab.active_pane.title
end)

-- dim inactive windows
-- https://wezfurlong.org/wezterm/config/lua/window/is_focused.html
wezterm.on('update-status', function(window, pane)
  local overrides = window:get_config_overrides() or {}
  if window:is_focused() then
    overrides.color_scheme = 'nordfox'
  else
    overrides.color_scheme = 'nightfox'
  end
  window:set_config_overrides(overrides)
end)

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Font stuff
-- config.color_scheme = 'Novel'
-- config.font = wezterm.font('Inconsolata Nerd Font', { weight = 'Bold' })
config.font_size = 15

-- config.font = wezterm.font 'Hack Nerd Font'
config.font = wezterm.font 'FiraCode Nerd Font'
-- config.font = wezterm.font 'MonaspiceAr Nerd Font'
-- config.font = wezterm.font('FiraCode Nerd Font', { weight = 'Bold' })
-- config.font = wezterm.font('MonaspiceNe Nerd Font', { weight = 'Medium' })
-- config.cell_width = 0.9

-- Window boarder
config.enable_tab_bar = true
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

-- Dim inactive panes
config.inactive_pane_hsb = {
      saturation = 0.9,
      brightness = 0.8,
    }

-- and finally, return the configuration to wezterm
return config

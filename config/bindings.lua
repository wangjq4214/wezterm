local wezterm = require('wezterm')
local act = wezterm.action

return {
  leader = {
    key = 'a',
    mods = 'CTRL',
  },

  keys = {
    -- Mode change and command activate
    { key = 'c', mods = 'LEADER', action = act.ActivateCopyMode },
    { key = 'p', mods = 'LEADER', action = act.ActivateCommandPalette },
    { key = 'l', mods = 'LEADER', action = act.ShowLauncher },
    { key = 't', mods = 'LEADER', action = act.ShowTabNavigator },
    { key = 'F11', mods = 'NONE', action = act.ToggleFullScreen },
    { key = 'F12', mods = 'NONE', action = act.ShowDebugOverlay },
    {
      key = 'f',
      mods = 'LEADER',
      action = act.Search({
        CaseInSensitiveString = '',
      }),
    },
    -- Tabs --
    -- Tabs: spawn+close
    { key = 't', mods = 'CTRL', action = act.SpawnTab('DefaultDomain') },
    {
      key = 'q',
      mods = 'CTRL',
      action = act.CloseCurrentTab({
        confirm = false,
      }),
    },
    -- Tabs: navigation
    { key = '[', mods = 'CTRL', action = act.ActivateTabRelative(-1) },
    { key = ']', mods = 'CTRL', action = act.ActivateTabRelative(1) },
    -- Window
    -- Spawn windows
    { key = 'N', mods = 'CTRL', action = act.SpawnWindow },
    -- Panes
    -- Panes: split panes
    {
      key = [[\]],
      mods = 'CTRL',
      action = act.SplitVertical({
        domain = 'CurrentPaneDomain',
      }),
    },
    {
      key = [[/]],
      mods = 'CTRL',
      action = act.SplitHorizontal({
        domain = 'CurrentPaneDomain',
      }),
    },
    -- Panes: close panes
    {
      key = 'w',
      mods = 'CTRL',
      action = act.CloseCurrentPane({
        confirm = true,
      }),
    },
    -- Panes: move_to_new_tab
    {
      key = ',',
      mods = 'CTRL',
      action = wezterm.action_callback(function(_, pane)
        pane:move_to_new_tab()
      end),
    },
    -- Panes: navigation
    { key = 'k', mods = 'CTRL', action = act.ActivatePaneDirection('Up') },
    { key = 'j', mods = 'CTRL', action = act.ActivatePaneDirection('Down') },
    { key = 'h', mods = 'CTRL', action = act.ActivatePaneDirection('Left') },
    { key = 'l', mods = 'CTRL', action = act.ActivatePaneDirection('Right') },
    -- Panes: Resize
    { key = 'UpArrow', mods = 'CTRL', action = act.AdjustPaneSize({ 'Up', 5 }) },
    { key = 'DownArrow', mods = 'CTRL', action = act.AdjustPaneSize({ 'Down', 5 }) },
    { key = 'LeftArrow', mods = 'CTRL', action = act.AdjustPaneSize({ 'Left', 5 }) },
    { key = 'RightArrow', mods = 'CTRL', action = act.AdjustPaneSize({ 'Right', 5 }) },
    -- Rename tab bar
    {
      key = 'R',
      mods = 'CTRL|SHIFT',
      action = act.PromptInputLine({
        description = 'Enter new name for tab',
        action = wezterm.action_callback(function(window, _, line)
          -- line will be `nil` if they hit escape without entering anything
          -- An empty string if they just hit enter
          -- Or the actual line of text they wrote
          if line then
            window:active_tab():set_title(line)
          end
        end),
      }),
    },
  },
}

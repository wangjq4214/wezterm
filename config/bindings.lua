local wezterm = require('wezterm')
local act = wezterm.action

return {
  keys = {
    { key = 'Tab', mods = 'CTRL', action = act.ActivateTabRelative(1) },
    { key = 'Tab', mods = 'SHIFT|CTRL', action = act.ActivateTabRelative(-1) },
    { key = 'Enter', mods = 'ALT', action = act.ToggleFullScreen },
    { key = '!', mods = 'CTRL', action = act.ActivateTab(0) },
    { key = '!', mods = 'SHIFT|CTRL', action = act.ActivateTab(0) },
    { key = '"', mods = 'ALT|CTRL', action = act.SplitVertical({ domain = 'CurrentPaneDomain' }) },
    {
      key = '"',
      mods = 'SHIFT|ALT|CTRL',
      action = act.SplitVertical({ domain = 'CurrentPaneDomain' }),
    },
    { key = '#', mods = 'CTRL', action = act.ActivateTab(2) },
    { key = '#', mods = 'SHIFT|CTRL', action = act.ActivateTab(2) },
    { key = '$', mods = 'CTRL', action = act.ActivateTab(3) },
    { key = '$', mods = 'SHIFT|CTRL', action = act.ActivateTab(3) },
    { key = '%', mods = 'CTRL', action = act.ActivateTab(4) },
    { key = '%', mods = 'SHIFT|CTRL', action = act.ActivateTab(4) },
    { key = '%', mods = 'ALT|CTRL', action = act.SplitHorizontal({ domain = 'CurrentPaneDomain' }) },
    {
      key = '%',
      mods = 'SHIFT|ALT|CTRL',
      action = act.SplitHorizontal({ domain = 'CurrentPaneDomain' }),
    },
    { key = '&', mods = 'CTRL', action = act.ActivateTab(6) },
    { key = '&', mods = 'SHIFT|CTRL', action = act.ActivateTab(6) },
    {
      key = '\'',
      mods = 'SHIFT|ALT|CTRL',
      action = act.SplitVertical({ domain = 'CurrentPaneDomain' }),
    },
    { key = '(', mods = 'CTRL', action = act.ActivateTab(-1) },
    { key = '(', mods = 'SHIFT|CTRL', action = act.ActivateTab(-1) },
    { key = ')', mods = 'CTRL', action = act.ResetFontSize },
    { key = ')', mods = 'SHIFT|CTRL', action = act.ResetFontSize },
    { key = '*', mods = 'CTRL', action = act.ActivateTab(7) },
    { key = '*', mods = 'SHIFT|CTRL', action = act.ActivateTab(7) },
    { key = '+', mods = 'CTRL', action = act.IncreaseFontSize },
    { key = '+', mods = 'SHIFT|CTRL', action = act.IncreaseFontSize },
    { key = '-', mods = 'CTRL', action = act.DecreaseFontSize },
    { key = '-', mods = 'SHIFT|CTRL', action = act.DecreaseFontSize },
    { key = '-', mods = 'SUPER', action = act.DecreaseFontSize },
    { key = '0', mods = 'CTRL', action = act.ResetFontSize },
    { key = '0', mods = 'SHIFT|CTRL', action = act.ResetFontSize },
    { key = '0', mods = 'SUPER', action = act.ResetFontSize },
    { key = '1', mods = 'SHIFT|CTRL', action = act.ActivateTab(0) },
    { key = '1', mods = 'SUPER', action = act.ActivateTab(0) },
    { key = '2', mods = 'SHIFT|CTRL', action = act.ActivateTab(1) },
    { key = '2', mods = 'SUPER', action = act.ActivateTab(1) },
    { key = '3', mods = 'SHIFT|CTRL', action = act.ActivateTab(2) },
    { key = '3', mods = 'SUPER', action = act.ActivateTab(2) },
    { key = '4', mods = 'SHIFT|CTRL', action = act.ActivateTab(3) },
    { key = '4', mods = 'SUPER', action = act.ActivateTab(3) },
    { key = '5', mods = 'SHIFT|CTRL', action = act.ActivateTab(4) },
    {
      key = '5',
      mods = 'SHIFT|ALT|CTRL',
      action = act.SplitHorizontal({ domain = 'CurrentPaneDomain' }),
    },
    { key = '5', mods = 'SUPER', action = act.ActivateTab(4) },
    { key = '6', mods = 'SHIFT|CTRL', action = act.ActivateTab(5) },
    { key = '6', mods = 'SUPER', action = act.ActivateTab(5) },
    { key = '7', mods = 'SHIFT|CTRL', action = act.ActivateTab(6) },
    { key = '7', mods = 'SUPER', action = act.ActivateTab(6) },
    { key = '8', mods = 'SHIFT|CTRL', action = act.ActivateTab(7) },
    { key = '8', mods = 'SUPER', action = act.ActivateTab(7) },
    { key = '9', mods = 'SHIFT|CTRL', action = act.ActivateTab(-1) },
    { key = '9', mods = 'SUPER', action = act.ActivateTab(-1) },
    { key = '=', mods = 'CTRL', action = act.IncreaseFontSize },
    { key = '=', mods = 'SHIFT|CTRL', action = act.IncreaseFontSize },
    { key = '=', mods = 'SUPER', action = act.IncreaseFontSize },
    { key = '@', mods = 'CTRL', action = act.ActivateTab(1) },
    { key = '@', mods = 'SHIFT|CTRL', action = act.ActivateTab(1) },
    { key = 'C', mods = 'CTRL', action = act.CopyTo('Clipboard') },
    { key = 'C', mods = 'SHIFT|CTRL', action = act.CopyTo('Clipboard') },
    { key = 'F', mods = 'CTRL', action = act.Search('CurrentSelectionOrEmptyString') },
    { key = 'F', mods = 'SHIFT|CTRL', action = act.Search('CurrentSelectionOrEmptyString') },
    { key = 'K', mods = 'CTRL', action = act.ClearScrollback('ScrollbackOnly') },
    { key = 'K', mods = 'SHIFT|CTRL', action = act.ClearScrollback('ScrollbackOnly') },
    { key = 'L', mods = 'CTRL', action = act.ShowDebugOverlay },
    { key = 'L', mods = 'SHIFT|CTRL', action = act.ShowDebugOverlay },
    { key = 'M', mods = 'CTRL', action = act.Hide },
    { key = 'M', mods = 'SHIFT|CTRL', action = act.Hide },
    { key = 'N', mods = 'CTRL', action = act.SpawnWindow },
    { key = 'N', mods = 'SHIFT|CTRL', action = act.SpawnWindow },
    { key = 'P', mods = 'CTRL', action = act.ActivateCommandPalette },
    { key = 'P', mods = 'SHIFT|CTRL', action = act.ActivateCommandPalette },
    { key = 'R', mods = 'CTRL', action = act.ReloadConfiguration },
    { key = 'R', mods = 'SHIFT|CTRL', action = act.ReloadConfiguration },
    { key = 'T', mods = 'CTRL', action = act.SpawnTab('CurrentPaneDomain') },
    { key = 'T', mods = 'SHIFT|CTRL', action = act.SpawnTab('CurrentPaneDomain') },
    {
      key = 'U',
      mods = 'CTRL',
      action = act.CharSelect({ copy_on_select = true, copy_to = 'ClipboardAndPrimarySelection' }),
    },
    {
      key = 'U',
      mods = 'SHIFT|CTRL',
      action = act.CharSelect({ copy_on_select = true, copy_to = 'ClipboardAndPrimarySelection' }),
    },
    { key = 'V', mods = 'CTRL', action = act.PasteFrom('Clipboard') },
    { key = 'V', mods = 'SHIFT|CTRL', action = act.PasteFrom('Clipboard') },
    { key = 'W', mods = 'CTRL', action = act.CloseCurrentTab({ confirm = true }) },
    { key = 'W', mods = 'SHIFT|CTRL', action = act.CloseCurrentTab({ confirm = true }) },
    { key = 'X', mods = 'CTRL', action = act.ActivateCopyMode },
    { key = 'X', mods = 'SHIFT|CTRL', action = act.ActivateCopyMode },
    { key = 'Z', mods = 'CTRL', action = act.TogglePaneZoomState },
    { key = 'Z', mods = 'SHIFT|CTRL', action = act.TogglePaneZoomState },
    { key = '[', mods = 'SHIFT|SUPER', action = act.ActivateTabRelative(-1) },
    { key = ']', mods = 'SHIFT|SUPER', action = act.ActivateTabRelative(1) },
    { key = '^', mods = 'CTRL', action = act.ActivateTab(5) },
    { key = '^', mods = 'SHIFT|CTRL', action = act.ActivateTab(5) },
    { key = '_', mods = 'CTRL', action = act.DecreaseFontSize },
    { key = '_', mods = 'SHIFT|CTRL', action = act.DecreaseFontSize },
    { key = 'c', mods = 'SHIFT|CTRL', action = act.CopyTo('Clipboard') },
    { key = 'c', mods = 'SUPER', action = act.CopyTo('Clipboard') },
    { key = 'f', mods = 'SHIFT|CTRL', action = act.Search('CurrentSelectionOrEmptyString') },
    { key = 'f', mods = 'SUPER', action = act.Search('CurrentSelectionOrEmptyString') },
    { key = 'k', mods = 'SHIFT|CTRL', action = act.ClearScrollback('ScrollbackOnly') },
    { key = 'k', mods = 'SUPER', action = act.ClearScrollback('ScrollbackOnly') },
    { key = 'l', mods = 'SHIFT|CTRL', action = act.ShowDebugOverlay },
    { key = 'm', mods = 'SHIFT|CTRL', action = act.Hide },
    { key = 'm', mods = 'SUPER', action = act.Hide },
    { key = 'n', mods = 'SHIFT|CTRL', action = act.SpawnWindow },
    { key = 'n', mods = 'SUPER', action = act.SpawnWindow },
    { key = 'p', mods = 'SHIFT|CTRL', action = act.ActivateCommandPalette },
    { key = 'r', mods = 'SHIFT|CTRL', action = act.ReloadConfiguration },
    { key = 'r', mods = 'SUPER', action = act.ReloadConfiguration },
    { key = 't', mods = 'SHIFT|CTRL', action = act.SpawnTab('CurrentPaneDomain') },
    { key = 't', mods = 'SUPER', action = act.SpawnTab('CurrentPaneDomain') },
    {
      key = 'u',
      mods = 'SHIFT|CTRL',
      action = act.CharSelect({ copy_on_select = true, copy_to = 'ClipboardAndPrimarySelection' }),
    },
    { key = 'v', mods = 'SHIFT|CTRL', action = act.PasteFrom('Clipboard') },
    { key = 'v', mods = 'SUPER', action = act.PasteFrom('Clipboard') },
    { key = 'w', mods = 'SHIFT|CTRL', action = act.CloseCurrentTab({ confirm = true }) },
    { key = 'w', mods = 'SUPER', action = act.CloseCurrentTab({ confirm = true }) },
    { key = 'x', mods = 'SHIFT|CTRL', action = act.ActivateCopyMode },
    { key = 'z', mods = 'SHIFT|CTRL', action = act.TogglePaneZoomState },
    { key = '{', mods = 'SUPER', action = act.ActivateTabRelative(-1) },
    { key = '{', mods = 'SHIFT|SUPER', action = act.ActivateTabRelative(-1) },
    { key = '}', mods = 'SUPER', action = act.ActivateTabRelative(1) },
    { key = '}', mods = 'SHIFT|SUPER', action = act.ActivateTabRelative(1) },
    { key = 'phys:Space', mods = 'SHIFT|CTRL', action = act.QuickSelect },
    { key = 'PageUp', mods = 'SHIFT', action = act.ScrollByPage(-1) },
    { key = 'PageUp', mods = 'CTRL', action = act.ActivateTabRelative(-1) },
    { key = 'PageUp', mods = 'SHIFT|CTRL', action = act.MoveTabRelative(-1) },
    { key = 'PageDown', mods = 'SHIFT', action = act.ScrollByPage(1) },
    { key = 'PageDown', mods = 'CTRL', action = act.ActivateTabRelative(1) },
    { key = 'PageDown', mods = 'SHIFT|CTRL', action = act.MoveTabRelative(1) },
    { key = 'LeftArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection('Left') },
    { key = 'LeftArrow', mods = 'SHIFT|ALT|CTRL', action = act.AdjustPaneSize({ 'Left', 1 }) },
    { key = 'RightArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection('Right') },
    { key = 'RightArrow', mods = 'SHIFT|ALT|CTRL', action = act.AdjustPaneSize({ 'Right', 1 }) },
    { key = 'UpArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection('Up') },
    { key = 'UpArrow', mods = 'SHIFT|ALT|CTRL', action = act.AdjustPaneSize({ 'Up', 1 }) },
    { key = 'DownArrow', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection('Down') },
    { key = 'DownArrow', mods = 'SHIFT|ALT|CTRL', action = act.AdjustPaneSize({ 'Down', 1 }) },
    { key = 'Insert', mods = 'SHIFT', action = act.PasteFrom('PrimarySelection') },
    { key = 'Insert', mods = 'CTRL', action = act.CopyTo('PrimarySelection') },
    { key = 'Copy', mods = 'NONE', action = act.CopyTo('Clipboard') },
    { key = 'Paste', mods = 'NONE', action = act.PasteFrom('Clipboard') },
  },

  key_tables = {
    copy_mode = {
      { key = 'Tab', mods = 'NONE', action = act.CopyMode('MoveForwardWord') },
      { key = 'Tab', mods = 'SHIFT', action = act.CopyMode('MoveBackwardWord') },
      { key = 'Enter', mods = 'NONE', action = act.CopyMode('MoveToStartOfNextLine') },
      { key = 'Escape', mods = 'NONE', action = act.CopyMode('Close') },
      { key = 'Space', mods = 'NONE', action = act.CopyMode({ SetSelectionMode = 'Cell' }) },
      { key = '$', mods = 'NONE', action = act.CopyMode('MoveToEndOfLineContent') },
      { key = '$', mods = 'SHIFT', action = act.CopyMode('MoveToEndOfLineContent') },
      { key = ',', mods = 'NONE', action = act.CopyMode('JumpReverse') },
      { key = '0', mods = 'NONE', action = act.CopyMode('MoveToStartOfLine') },
      { key = ';', mods = 'NONE', action = act.CopyMode('JumpAgain') },
      { key = 'F', mods = 'NONE', action = act.CopyMode({ JumpBackward = { prev_char = false } }) },
      { key = 'F', mods = 'SHIFT', action = act.CopyMode({ JumpBackward = { prev_char = false } }) },
      { key = 'G', mods = 'NONE', action = act.CopyMode('MoveToScrollbackBottom') },
      { key = 'G', mods = 'SHIFT', action = act.CopyMode('MoveToScrollbackBottom') },
      { key = 'H', mods = 'NONE', action = act.CopyMode('MoveToViewportTop') },
      { key = 'H', mods = 'SHIFT', action = act.CopyMode('MoveToViewportTop') },
      { key = 'L', mods = 'NONE', action = act.CopyMode('MoveToViewportBottom') },
      { key = 'L', mods = 'SHIFT', action = act.CopyMode('MoveToViewportBottom') },
      { key = 'M', mods = 'NONE', action = act.CopyMode('MoveToViewportMiddle') },
      { key = 'M', mods = 'SHIFT', action = act.CopyMode('MoveToViewportMiddle') },
      { key = 'O', mods = 'NONE', action = act.CopyMode('MoveToSelectionOtherEndHoriz') },
      { key = 'O', mods = 'SHIFT', action = act.CopyMode('MoveToSelectionOtherEndHoriz') },
      { key = 'T', mods = 'NONE', action = act.CopyMode({ JumpBackward = { prev_char = true } }) },
      { key = 'T', mods = 'SHIFT', action = act.CopyMode({ JumpBackward = { prev_char = true } }) },
      { key = 'V', mods = 'NONE', action = act.CopyMode({ SetSelectionMode = 'Line' }) },
      { key = 'V', mods = 'SHIFT', action = act.CopyMode({ SetSelectionMode = 'Line' }) },
      { key = '^', mods = 'NONE', action = act.CopyMode('MoveToStartOfLineContent') },
      { key = '^', mods = 'SHIFT', action = act.CopyMode('MoveToStartOfLineContent') },
      { key = 'b', mods = 'NONE', action = act.CopyMode('MoveBackwardWord') },
      { key = 'b', mods = 'ALT', action = act.CopyMode('MoveBackwardWord') },
      { key = 'b', mods = 'CTRL', action = act.CopyMode('PageUp') },
      { key = 'c', mods = 'CTRL', action = act.CopyMode('Close') },
      { key = 'd', mods = 'CTRL', action = act.CopyMode({ MoveByPage = 0.5 }) },
      { key = 'e', mods = 'NONE', action = act.CopyMode('MoveForwardWordEnd') },
      { key = 'f', mods = 'NONE', action = act.CopyMode({ JumpForward = { prev_char = false } }) },
      { key = 'f', mods = 'ALT', action = act.CopyMode('MoveForwardWord') },
      { key = 'f', mods = 'CTRL', action = act.CopyMode('PageDown') },
      { key = 'g', mods = 'NONE', action = act.CopyMode('MoveToScrollbackTop') },
      { key = 'g', mods = 'CTRL', action = act.CopyMode('Close') },
      { key = 'h', mods = 'NONE', action = act.CopyMode('MoveLeft') },
      { key = 'j', mods = 'NONE', action = act.CopyMode('MoveDown') },
      { key = 'k', mods = 'NONE', action = act.CopyMode('MoveUp') },
      { key = 'l', mods = 'NONE', action = act.CopyMode('MoveRight') },
      { key = 'm', mods = 'ALT', action = act.CopyMode('MoveToStartOfLineContent') },
      { key = 'o', mods = 'NONE', action = act.CopyMode('MoveToSelectionOtherEnd') },
      { key = 'q', mods = 'NONE', action = act.CopyMode('Close') },
      { key = 't', mods = 'NONE', action = act.CopyMode({ JumpForward = { prev_char = true } }) },
      { key = 'u', mods = 'CTRL', action = act.CopyMode({ MoveByPage = -0.5 }) },
      { key = 'v', mods = 'NONE', action = act.CopyMode({ SetSelectionMode = 'Cell' }) },
      { key = 'v', mods = 'CTRL', action = act.CopyMode({ SetSelectionMode = 'Block' }) },
      { key = 'w', mods = 'NONE', action = act.CopyMode('MoveForwardWord') },
      {
        key = 'y',
        mods = 'NONE',
        action = act.Multiple({
          { CopyTo = 'ClipboardAndPrimarySelection' },
          { CopyMode = 'Close' },
        }),
      },
      { key = 'PageUp', mods = 'NONE', action = act.CopyMode('PageUp') },
      { key = 'PageDown', mods = 'NONE', action = act.CopyMode('PageDown') },
      { key = 'End', mods = 'NONE', action = act.CopyMode('MoveToEndOfLineContent') },
      { key = 'Home', mods = 'NONE', action = act.CopyMode('MoveToStartOfLine') },
      { key = 'LeftArrow', mods = 'NONE', action = act.CopyMode('MoveLeft') },
      { key = 'LeftArrow', mods = 'ALT', action = act.CopyMode('MoveBackwardWord') },
      { key = 'RightArrow', mods = 'NONE', action = act.CopyMode('MoveRight') },
      { key = 'RightArrow', mods = 'ALT', action = act.CopyMode('MoveForwardWord') },
      { key = 'UpArrow', mods = 'NONE', action = act.CopyMode('MoveUp') },
      { key = 'DownArrow', mods = 'NONE', action = act.CopyMode('MoveDown') },
    },

    search_mode = {
      { key = 'Enter', mods = 'NONE', action = act.CopyMode('PriorMatch') },
      { key = 'Escape', mods = 'NONE', action = act.CopyMode('Close') },
      { key = 'n', mods = 'CTRL', action = act.CopyMode('NextMatch') },
      { key = 'p', mods = 'CTRL', action = act.CopyMode('PriorMatch') },
      { key = 'r', mods = 'CTRL', action = act.CopyMode('CycleMatchType') },
      { key = 'u', mods = 'CTRL', action = act.CopyMode('ClearPattern') },
      { key = 'PageUp', mods = 'NONE', action = act.CopyMode('PriorMatchPage') },
      { key = 'PageDown', mods = 'NONE', action = act.CopyMode('NextMatchPage') },
      { key = 'UpArrow', mods = 'NONE', action = act.CopyMode('PriorMatch') },
      { key = 'DownArrow', mods = 'NONE', action = act.CopyMode('NextMatch') },
    },
  },
}

-- local wezterm = require('wezterm')
-- local platform = require('utils.platform')
-- local act = wezterm.action

-- local mod = {}

-- if platform.is_mac then
--   mod.SUPER = 'SUPER'
--   mod.SUPER_REV = 'SUPER|CTRL'
-- elseif platform.is_win then
--   mod.SUPER = 'ALT'
--   -- to not conflict with Windows key shortcuts
--   mod.SUPER_REV = 'ALT|CTRL'
-- end

-- local keys = {
--   -- misc/useful --
--   {
--     key = 'F1',
--     mods = 'NONE',
--     action = 'ActivateCopyMode',
--   },
--   {
--     key = 'F2',
--     mods = 'NONE',
--     action = act.ActivateCommandPalette,
--   },
--   {
--     key = 'F3',
--     mods = 'NONE',
--     action = act.ShowLauncher,
--   },
--   {
--     key = 'F4',
--     mods = 'NONE',
--     action = act.ShowTabNavigator,
--   },
--   {
--     key = 'F11',
--     mods = 'NONE',
--     action = act.ToggleFullScreen,
--   },
--   {
--     key = 'F12',
--     mods = 'NONE',
--     action = act.ShowDebugOverlay,
--   },
--   {
--     key = 'f',
--     mods = mod.SUPER,
--     action = act.Search({
--       CaseInSensitiveString = '',
--     }),
--   },
--   -- copy/paste --
--   -- { key = 'c', mods = 'CTRL|SHIFT', action = act.CopyTo('Clipboard') },
--   -- { key = 'v', mods = 'CTRL|SHIFT', action = act.PasteFrom('Clipboard') },
--   {
--     key = 'c',
--     mods = 'CMD',
--     action = act.CopyTo('Clipboard'),
--   },
--   {
--     key = 'v',
--     mods = 'CMD',
--     action = act.PasteFrom('Clipboard'),
--   },
--   -- tabs --
--   -- tabs: spawn+close
--   -- { key = 't', mods = mod.SUPER, action = act.SpawnTab('DefaultDomain') },
--   -- { key = 't', mods = mod.SUPER_REV, action = act.SpawnTab({ DomainName = 'WSL:Ubuntu' }) },
--   {
--     key = 'q',
--     mods = mod.SUPER,
--     action = act.CloseCurrentTab({
--       confirm = false,
--     }),
--   },
--   {
--     key = 'w',
--     mods = mod.SUPER,
--     action = act.CloseCurrentPane({
--       confirm = false,
--     }),
--   }, -- tabs: navigation
--   {
--     key = '[',
--     mods = mod.SUPER,
--     action = act.ActivateTabRelative(-1),
--   },
--   {
--     key = ']',
--     mods = mod.SUPER,
--     action = act.ActivateTabRelative(1),
--   },
--   {
--     key = '[',
--     mods = mod.SUPER_REV,
--     action = act.MoveTabRelative(-1),
--   },
--   {
--     key = ']',
--     mods = mod.SUPER_REV,
--     action = act.MoveTabRelative(1),
--   },
--   {
--     key = 't',
--     mods = mod.SUPER_REV,
--     action = act.ShowTabNavigator,
--   },
--   -- window --
--   -- spawn windows
--   {
--     key = 'n',
--     mods = mod.SUPER,
--     action = act.SpawnWindow,
--   },
--   {
--     key = 'n',
--     mods = mod.SUPER_REV,
--     action = act.SpawnTab('CurrentPaneDomain'),
--   },
--   -- panes --
--   -- panes: split panes
--   {
--     key = [[/]],
--     mods = mod.SUPER_REV,
--     action = act.SplitVertical({
--       domain = 'CurrentPaneDomain',
--     }),
--   },
--   {
--     key = [[\]],
--     mods = mod.SUPER_REV,
--     action = act.SplitHorizontal({
--       domain = 'CurrentPaneDomain',
--     }),
--   },
--   {
--     key = [[-]],
--     mods = mod.SUPER_REV,
--     action = act.CloseCurrentPane({
--       confirm = true,
--     }),
--   },
--   {
--     key = ',',
--     mods = 'CTRL',
--     action = wezterm.action_callback(function(win, pane)
--       local tab, window = pane:move_to_new_tab()
--     end),
--   },
--   -- panes: zoom+close pane
--   {
--     key = 'z',
--     mods = mod.SUPER_REV,
--     action = act.TogglePaneZoomState,
--   },
--   -- { key = 'w', mods = mod.SUPER, action = act.CloseCurrentPane({ confirm = false }) },
--   -- panes: navigation
--   { key = 'k', mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Up') },
--   { key = 'j', mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Down') },
--   { key = 'h', mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Left') },
--   { key = 'l', mods = mod.SUPER_REV, action = act.ActivatePaneDirection('Right') },
--   -- {
--   --     key = 'UpArrow',
--   --     mods = 'NONE',
--   --     action = act.ActivatePaneDirection('Up')
--   -- },
--   -- {
--   --     key = 'DownArrow',
--   --     mods = 'NONE',
--   --     action = act.ActivatePaneDirection('Down')
--   -- },
--   -- {
--   --     key = 'LeftArrow',
--   --     mods = 'NONE',
--   --     action = act.ActivatePaneDirection('Left')
--   -- },
--   -- {
--   --     key = 'RightArrow',
--   --     mods = 'NONE',
--   --     action = act.ActivatePaneDirection('Right')
--   -- },
--   -- panes: resize
--   -- {
--   --     key = 'UpArrow',
--   --     mods = mod.SUPER_REV,
--   --     action = act.AdjustPaneSize({ 'Up', 1 })
--   -- },
--   -- {
--   --     key = 'DownArrow',
--   --     mods = mod.SUPER_REV,
--   --     action = act.AdjustPaneSize({ 'Down', 1 })
--   -- },
--   -- {
--   --     key = 'LeftArrow',
--   --     mods = mod.SUPER_REV,
--   --     action = act.AdjustPaneSize({ 'Left', 1 })
--   -- },
--   -- {
--   --     key = 'RightArrow',
--   --     mods = mod.SUPER_REV,
--   --     action = act.AdjustPaneSize({ 'Right', 1 })
--   -- },
--   -- fonts --
--   -- fonts: resize
--   {
--     key = 'UpArrow',
--     mods = mod.SUPER,
--     action = act.IncreaseFontSize,
--   },
--   {
--     key = 'DownArrow',
--     mods = mod.SUPER,
--     action = act.DecreaseFontSize,
--   },
--   {
--     key = 'r',
--     mods = mod.SUPER,
--     action = act.ResetFontSize,
--   },
--   -- key-tables --
--   -- resizes fonts
--   {
--     key = 'f',
--     mods = 'LEADER',
--     action = act.ActivateKeyTable({
--       name = 'resize_font',
--       one_shot = false,
--       timemout_miliseconds = 1000,
--     }),
--   }, -- resize panes
--   {
--     key = 'p',
--     mods = 'LEADER',
--     action = act.ActivateKeyTable({
--       name = 'resize_pane',
--       one_shot = false,
--       timemout_miliseconds = 1000,
--     }),
--   },
--   -- rename tab bar
--   {
--     key = 'R',
--     mods = 'CTRL|SHIFT',
--     action = act.PromptInputLine({
--       description = 'Enter new name for tab',
--       action = wezterm.action_callback(function(window, pane, line)
--         -- line will be `nil` if they hit escape without entering anything
--         -- An empty string if they just hit enter
--         -- Or the actual line of text they wrote
--         if line then
--           window:active_tab():set_title(line)
--         end
--       end),
--     }),
--   },
-- }

-- local key_tables = {
--   resize_font = {
--     {
--       key = 'k',
--       action = act.IncreaseFontSize,
--     },
--     {
--       key = 'j',
--       action = act.DecreaseFontSize,
--     },
--     {
--       key = 'r',
--       action = act.ResetFontSize,
--     },
--     {
--       key = 'Escape',
--       action = 'PopKeyTable',
--     },
--     {
--       key = 'q',
--       action = 'PopKeyTable',
--     },
--   },
--   resize_pane = {
--     {
--       key = 'k',
--       action = act.AdjustPaneSize({ 'Up', 1 }),
--     },
--     {
--       key = 'j',
--       action = act.AdjustPaneSize({ 'Down', 1 }),
--     },
--     {
--       key = 'h',
--       action = act.AdjustPaneSize({ 'Left', 1 }),
--     },
--     {
--       key = 'l',
--       action = act.AdjustPaneSize({ 'Right', 1 }),
--     },
--     {
--       key = 'Escape',
--       action = 'PopKeyTable',
--     },
--     {
--       key = 'q',
--       action = 'PopKeyTable',
--     },
--   },
-- }

-- local mouse_bindings = {
--   -- Ctrl-click will open the link under the mouse cursor
--   {
--     event = {
--       Up = {
--         streak = 1,
--         button = 'Left',
--       },
--     },
--     mods = 'CTRL',
--     action = act.OpenLinkAtMouseCursor,
--   },
--   -- Move mouse will only select text and not copy text to clipboard
--   {
--     event = {
--       Down = {
--         streak = 1,
--         button = 'Left',
--       },
--     },
--     mods = 'NONE',
--     action = act.SelectTextAtMouseCursor('Cell'),
--   },
--   {
--     event = {
--       Up = {
--         streak = 1,
--         button = 'Left',
--       },
--     },
--     mods = 'NONE',
--     action = act.ExtendSelectionToMouseCursor('Cell'),
--   },
--   {
--     event = {
--       Drag = {
--         streak = 1,
--         button = 'Left',
--       },
--     },
--     mods = 'NONE',
--     action = act.ExtendSelectionToMouseCursor('Cell'),
--   },
--   -- Triple Left click will select a line
--   {
--     event = {
--       Down = {
--         streak = 3,
--         button = 'Left',
--       },
--     },
--     mods = 'NONE',
--     action = act.SelectTextAtMouseCursor('Line'),
--   },
--   {
--     event = {
--       Up = {
--         streak = 3,
--         button = 'Left',
--       },
--     },
--     mods = 'NONE',
--     action = act.SelectTextAtMouseCursor('Line'),
--   },
--   -- Double Left click will select a word
--   {
--     event = {
--       Down = {
--         streak = 2,
--         button = 'Left',
--       },
--     },
--     mods = 'NONE',
--     action = act.SelectTextAtMouseCursor('Word'),
--   },
--   {
--     event = {
--       Up = {
--         streak = 2,
--         button = 'Left',
--       },
--     },
--     mods = 'NONE',
--     action = act.SelectTextAtMouseCursor('Word'),
--   },
--   -- Turn on the mouse wheel to scroll the screen
--   {
--     event = {
--       Down = {
--         streak = 1,
--         button = {
--           WheelUp = 1,
--         },
--       },
--     },
--     mods = 'NONE',
--     action = act.ScrollByCurrentEventWheelDelta,
--   },
--   {
--     event = {
--       Down = {
--         streak = 1,
--         button = {
--           WheelDown = 1,
--         },
--       },
--     },
--     mods = 'NONE',
--     action = act.ScrollByCurrentEventWheelDelta,
--   },
-- }

-- return {
--   disable_default_key_bindings = true,
--   disable_default_mouse_bindings = true,
--   leader = {
--     key = 'Space',
--     mods = 'CTRL|SHIFT',
--   },
--   keys = keys,
--   key_tables = key_tables,
--   mouse_bindings = mouse_bindings,
-- }
-- return {}

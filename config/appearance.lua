return {
  animation_fps = 60,
  webgpu_power_preference = 'HighPerformance',

  -- color scheme
  color_scheme = 'Vs Code Dark+ (Gogh)',

  -- background
  window_background_opacity = 1,
  win32_system_backdrop = 'Acrylic',

  -- scrollbar
  enable_scroll_bar = true,
  min_scroll_bar_height = '3cell',
  colors = {
    scrollbar_thumb = '#454545',
  },

  -- tab bar
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = false,
  use_fancy_tab_bar = true,
  tab_max_width = 25,
  show_tab_index_in_tab_bar = true,
  switch_to_last_active_tab_when_closing_tab = true,

  -- cursor
  default_cursor_style = 'BlinkingBlock',
  cursor_blink_ease_in = 'Constant',
  cursor_blink_ease_out = 'Constant',
  cursor_blink_rate = 700,

  -- window
  window_decorations = 'INTEGRATED_BUTTONS|RESIZE',
  integrated_title_button_style = 'Windows',
  integrated_title_button_color = 'auto',
  integrated_title_button_alignment = 'Right',
  initial_cols = 120,
  initial_rows = 24,
  window_padding = {
    left = 10,
    right = 0,
    top = 12,
    bottom = 7,
  },
  window_close_confirmation = 'AlwaysPrompt',
  window_frame = {
    active_titlebar_bg = '#090909',
    font_size = 12,
  },
}

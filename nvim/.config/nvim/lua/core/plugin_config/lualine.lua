require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'nightfox',
    globalstatus = true,
  },
  sections = {
    lualine_a = {
      {
        'mode',
      }
    }
  }
}

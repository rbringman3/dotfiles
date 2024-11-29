require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'nordfox',
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

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'dayfox',
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

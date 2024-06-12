local lualine = require('lualine')
-- Config
local config = {
  options = {
    theme = 'gruvbox',
  },
  sections = {
    -- these are to remove the defaults
    lualine_c = {
      {
        'filename',
        file_status = true,
        path = 1
      }
    },
  },
  inactive_sections = {
    lualine_c = { {
      'filename',
      file_status = true,
      path = 1
    } }
  }
}
lualine.setup(config)

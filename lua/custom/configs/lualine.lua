local lualine = require('lualine')
-- Config
--
local window = function()
  return vim.api.nvim_win_get_number(0)
end
local config = {
  options = {
    theme = 'gruvbox-material',
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = { window, --[[ "mode" ]] },
    lualine_c = {
      {
        'filename',
        file_status = true,
        path = 1
      }
    },
  },
  inactive_sections = {
    lualine_a = { window },
    lualine_c = { {
      'filename',
      file_status = true,
      path = 1
    } }
  }
}
lualine.setup(config)

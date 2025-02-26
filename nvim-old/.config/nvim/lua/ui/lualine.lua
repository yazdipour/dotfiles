return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local theme = require 'lualine.themes.iceberg_dark'
    theme.normal.c.bg = 'None'
    require('lualine').setup {
      options = {
        theme = theme,
      },
    }
  end,
}

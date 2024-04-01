return {
  'stevearc/aerial.nvim',
  opts = {
    vim.keymap.set('n', '<leader>ct', '<cmd>AerialToggle!<CR>', { desc = 'Toggle [C]lass [T]ree Aerial' }),
    layout = { min_width = 28 },
    guides = {
      mid_item = '├ ',
      last_item = '└ ',
      nested_top = '│ ',
      whitespace = '  ',
    },
  },
  -- Optional dependencies
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
}

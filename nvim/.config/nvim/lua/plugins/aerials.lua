return {
  'stevearc/aerial.nvim',
  opts = {
    vim.keymap.set('n', '<leader>ca', '<cmd>AerialToggle!<CR>', { desc = 'Toggle [C]lass [A]erial' }),
  },
  -- Optional dependencies
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
}

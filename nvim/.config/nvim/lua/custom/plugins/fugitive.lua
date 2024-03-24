return   {
    'tpope/vim-fugitive',
    config = function()
      -- Set up a keymap to open the git blame window
      vim.keymap.set('n', '<leader>gb', ':Git blame<CR>', { desc = '[G]it [B]lame' })
    end,
  }
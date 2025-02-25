return {
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers", -- set to "tabs" to only show tabpages instead
          numbers = "none",
          close_command = "bdelete! %d",
          indicator = {
            icon = '▎', -- this should be omitted if indicator style is not 'icon'
            style = 'icon',
          },
          buffer_close_icon = '󰅖',
          modified_icon = '●',
          close_icon = '',
          left_trunc_marker = '',
          right_trunc_marker = '',
          diagnostics = "nvim_lsp",
          diagnostics_indicator = function(count, level)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
          end,
          separator_style = "thin",
          always_show_bufferline = true,
        },
      })

      -- Keymaps for buffer navigation
      vim.keymap.set('n', '<leader>bp', ':BufferLineCyclePrev<CR>', { desc = 'Previous buffer' })
      vim.keymap.set('n', '<leader>bn', ':BufferLineCycleNext<CR>', { desc = 'Next buffer' })
      vim.keymap.set('n', '<leader>bc', ':BufferLinePickClose<CR>', { desc = 'Pick Close buffer' })
      vim.keymap.set('n', '<leader>bb', ':BufferLinePick<CR>', { desc = 'Pick buffer' })
      vim.keymap.set('n', '<leader>bx', ':bdelete!<CR>:enew<CR>', { desc = 'Close buffer' })
    end,
  }
}
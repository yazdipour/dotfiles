if true then return {} end
return {
  'rmagatti/auto-session',
  config = function()
    require('auto-session').setup {
      auto_restore_enabled = true,
      auto_save_enabled = true,
      auto_session_enable_last_session = true,
      auto_session_root_dir = vim.fn.stdpath 'data' .. '/sessions/',
      -- ⚠️ This will only work if Telescope.nvim is installed
      -- The following are already the default values, no need to provide them if these are already the settings you want.
      session_lens = {
        -- If load_on_setup is set to false, one needs to eventually call `require("auto-session").setup_session_lens()` if they want to use session-lens.
        buftypes_to_ignore = {}, -- list of buffer types what should not be deleted from current session
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = true,
      },
      -- Set mapping for searching a session.
      -- ⚠️ This will only work if Telescope.nvim is installed
      vim.keymap.set('n', '<leader>st', require('auto-session.session-lens').search_session, {
        noremap = true,
        desc = 'Search [T]mux Session',
      }),
    }
  end,
}

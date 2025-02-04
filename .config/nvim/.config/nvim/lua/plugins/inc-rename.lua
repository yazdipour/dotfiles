return {
  'smjonas/inc-rename.nvim',
  config = function()
    require('inc_rename').setup()
  end,
  vim.keymap.set("n", "<leader>rn", ":IncRename ")
}

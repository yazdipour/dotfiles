return { -- Plugin for incremental renaming to not rename all at once
  'smjonas/inc-rename.nvim',
  config = function()
    require('inc_rename').setup()
  end,
  vim.keymap.set("n", "<leader>cr", ":IncRename ", { desc = "Incremental [R]ename" } )
}

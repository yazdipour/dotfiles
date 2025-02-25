return {
  { "fei6409/log-highlight.nvim", event = "BufRead *.log", opts = {} },
  'mg979/vim-visual-multi',               -- Multiple cursors
  'tpope/vim-sleuth',                     -- Detect tabstop and shiftwidth automatically
  { 'numToStr/Comment.nvim',      opts = {} }, -- "gc" to comment visual regions/lines
  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim',   event = 'VimEnter',      dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
  require('kickstart.plugins.autopairs'),
  require('kickstart.plugins.indent_line'),
  { -- Plugin for incremental renaming to not rename all at once
    'smjonas/inc-rename.nvim',
    config = function()
      require('inc_rename').setup()
    end,
    vim.keymap.set("n", "<leader>cr", ":IncRename ", { desc = "Incremental [R]ename" })
  }
}

return {
  "stevearc/oil.nvim",
  config = function()
    require("oil").setup({
        default_file_explorer = true,
    })
    vim.keymap.set("n", "<leader>-", function()
      if vim.bo.filetype == "oil" then
        vim.cmd("close")
      else
        vim.cmd("vsplit | Oil")
      end
    end, { desc = "Toggle Oil sidebar" })
  end,
}
-- Oil default keybindings:
-- To open Oil: <leader>o
-- Help: g?
-- Toggle Hidden files: g.
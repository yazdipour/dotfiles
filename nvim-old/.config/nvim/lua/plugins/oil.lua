return {
  "stevearc/oil.nvim",
  config = function()
    require("oil").setup({
        default_file_explorer = true,
        keymaps = {
          ["q"] = { "actions.close", mode = "n" },
        }
    })
    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end,
}
-- Oil default keybindings:
-- To open Oil: <leader>o
-- Help: g?
-- Toggle Hidden files: g.
-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Auto change directory to the current file's directory
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  desc = "Set the current working directory to the directory of the current file",
  callback = function()
    -- Only change directory if the current buffer is a normal file
    if vim.bo.buftype == "" and vim.fn.expand("%:p") ~= "" then
      vim.cmd("lcd %:p:h")
    end
  end,
})

return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu-dark",
    },
  },
  {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    config = function()
      require("ayu").setup({
        overrides = {
          LineNr = { fg = "#aaaaaa" },
          NonText = { fg = "#777777" },
          CursorLineNr = { fg = "#666666" }, -- Current line number color.
          Normal = { bg = "None" },
        },
      })
      vim.cmd.colorscheme("ayu")
    end,
  },
  -- { "dgox16/oldworld.nvim", lazy = true },
  -- { "tanvirtin/monokai.nvim", lazy = true },
  -- { "navarasu/onedark.nvim", lazy = true },
  { "projekt0n/github-nvim-theme", lazy = true },
  -- { "kdheepak/monochrome.nvim", lazy = true },
}

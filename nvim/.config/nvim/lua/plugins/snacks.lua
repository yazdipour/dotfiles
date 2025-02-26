return {
  "folke/snacks.nvim",
  opts = {
    explorer = {},
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          exclude = { "node_modules", ".git" },
          layout = {
            layout = {
              position = "right"
            }
          },
        },
      },
    },
  },
}

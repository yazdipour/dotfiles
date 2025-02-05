return {
  "nvim-neotest/neotest",
  dependencies = {
    "marilari88/neotest-vitest",
    "nvim-lua/plenary.nvim",
    "nvim-neotest/nvim-nio",
    "nvim-treesitter/nvim-treesitter",
    'nvim-neotest/neotest-plenary',
    'nvim-neotest/neotest-python'
  },
  opts = function(_, opts)
    table.insert(opts.adapters, require("neotest-vitest"))
    table.insert(opts.adapters, require("neotest-python"){
       pytest_discover_instances = true,        
       args = {"--log-level", "DEBUG"},
    })
  end,
  keys = {
    { "<leader>ta", "<cmd>lua require('neotest').run.attach()<cr>", desc = "Attach to the nearest test" },
    { "<leader>tl", "<cmd>lua require('neotest').run.run_last()<cr>", desc = "Toggle Test Summary" },
    { "<leader>to", "<cmd>lua require('neotest').output_panel.toggle()<cr>", desc = "Toggle Test Output Panel" },
    { "<leader>tp", "<cmd>lua require('neotest').run.stop()<cr>", desc = "Stop the nearest test" },
    { "<leader>ts", "<cmd>lua require('neotest').summary.toggle()<cr>", desc = "Toggle Test Summary" },
    { "<leader>tt", "<cmd>lua require('neotest').run.run()<cr>", desc = "Run the nearest test" },
    { "<leader>tT", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "Run test the current file" },
  },
}

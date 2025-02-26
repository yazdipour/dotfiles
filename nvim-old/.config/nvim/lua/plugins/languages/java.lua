return {
  'mfussenegger/nvim-jdtls',
  ft = 'java',
  dependencies = {
    'williamboman/mason.nvim',
    'hrsh7th/nvim-cmp',
    'mfussenegger/nvim-dap',
    'neovim/nvim-lspconfig',
  },
  config = function()
    require('jdtls').start_or_attach {
      cmd = { 'jdtls' },
      root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
    }
  end,
}

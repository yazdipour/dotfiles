return {
  'mfussenegger/nvim-lint',
  config = function()
    local lint = require 'lint'
    lint.linters_by_ft = {
      javascript = { 'eslint_d' },
      typescript = { 'eslint_d' },
      markdown = { 'markdownlint' },
      python = { 'flake8' },
    }
    vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
      callback = function()
        lint.try_lint()
      end,
    })
    vim.keymap.set('n', '<leader>fl', function()
      require('lint').try_lint()
    end, { desc = '[F]ile [L]int' })
  end,
}

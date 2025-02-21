return { -- Autoformat
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      -- Disable "format_on_save lsp_fallback" for languages that don't
      -- have a well standardized coding style. You can add additional
      -- languages here or re-enable it for the disabled ones.
      local disable_filetypes = { c = true, cpp = true }
      local lsp_format_opt
      if disable_filetypes[vim.bo[bufnr].filetype] then
        lsp_format_opt = 'never'
      else
        lsp_format_opt = 'fallback'
      end
      return {
        timeout_ms = 500,
        lsp_format = lsp_format_opt,
      }
    end,
    formatters_by_ft = {
      sh = { 'beautysh' },
      bash = { 'beautysh' },
      c = { 'clang_format' },
      cpp = { 'clang_format' },
      lua = { 'stylua' },
      python = { 'isort', 'black' },
      javascript = { { 'prettierd', 'prettier' } },
      typescript = { 'prettierd' },
      markdown = { 'prettierd' },
      xml = { 'xmlformat' },
      json = { 'prettierd' },
      yaml = { 'prettierd' },
      go = { 'goimports', 'gofmt' },
      rust = { 'rustfmt' },
      ['*'] = { 'codespell' },
    },
  },
  keys = {
    {
      '<leader>ff',
      function()
        require('conform').format()
      end,
      desc = '[F]ile [F]ormat',
    },
  },
}

return {
  'rcarriga/nvim-dap-ui',
  dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
  library = { plugins = { 'nvim-dap-ui' }, types = true },
  config = function()
    local dap, dapui = require 'dap', require 'dapui'

    dapui.setup()
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
    vim.keymap.set('n', '<leader>lb', dap.toggle_breakpoint, { desc = 'Toggle [L]ine [B]reakpoint' })
  end,
  keys = {
    {
      'n',
      '<leader>lb',
      function()
        require('dap').toggle_breakpoint()
      end,
      { noremap = true, desc = 'Toggle [L]ine [B]reakpoint' },
    },
    {
      'n',
      '<leader>lC',
      function()
        require('dap').set_conditional_breakpoint(vim.fn.input 'Breakpoint condition: ')
      end,
      { noremap = true, desc = 'Set [L]ine [C]onditional Breakpoint' },
    },
    {
      'n',
      '<leader>lR',
      function()
        require('dap').repl.open()
      end,
      { noremap = true, desc = 'Open [L]aunch [R]epl' },
    },
    {
      'n',
      '<leader>lS',
      function()
        require('dap').run_last()
      end,
      { noremap = true, desc = 'Run [L]ast' },
    },
    {
      'n',
      '<leader>lV',
      function()
        require('dap').variables()
      end,
      { noremap = true, desc = 'Show [L]ocal [V]ariables' },
    },
    {
      'n',
      '<leader>lC',
      function()
        require('dap').commands()
      end,
      { noremap = true, desc = 'Show [L]ocal [C]ommands' },
    },
    {
      'n',
      '<F5>',
      function()
        require('dap').continue()
      end,
      { noremap = true, desc = 'Continue' },
    },
    {
      'n',
      '<F10>',
      function()
        require('dap').step_over()
      end,
      { noremap = true, desc = 'Step [O]ver' },
    },
    {
      'n',
      '<F11>',
      function()
        require('dap').step_into()
      end,
      { noremap = true, desc = 'Step [I]nto' },
    },
    {
      'n',
      '<S-F11>',
      function()
        require('dap').step_out()
      end,
      { noremap = true, desc = 'Step [O]ut' },
    },
    {
      'n',
      '<F12>',
      function()
        require('dap').toggle_breakpoint()
      end,
      { noremap = true, desc = 'Toggle [B]reakpoint' },
    },
    {
      'n',
      '<leader>lD',
      function()
        require('dap').disconnect()
      end,
      { noremap = true, desc = 'Disconnect' },
    },
    {
      'n',
      '<leader>lR',
      function()
        require('dap').repl.open()
      end,
      { noremap = true, desc = 'Open [R]epl' },
    },
    {
      'n',
      '<leader>lS',
      function()
        require('dap').run_last()
      end,
      { noremap = true, desc = 'Run [L]ast' },
    },
    {
      'n',
      '<leader>lV',
      function()
        require('dap').variables()
      end,
      { noremap = true, desc = 'Show [L]ocal [V]ariables' },
    },
    {
      'n',
      '<leader>lC',
      function()
        require('dap').commands()
      end,
      { noremap = true, desc = 'Show [L]ocal [C]ommands' },
    },
    {
      'n',
      '<F5>',
      function()
        require('dap').continue()
      end,
      { noremap = true, desc = 'Continue' },
    },
    {
      'n',
      '<F10>',
      function()
        require('dap').step_over()
      end,
      { noremap = true, desc = 'Step Over' },
    },
    {
      'n',
      '<F11>',
      function()
        require('dap').step_into()
      end,
      { noremap = true, desc = 'Step Into' },
    },
    {
      'n',
      '<S-F11>',
      function()
        require('dap').step_out()
      end,
      { noremap = true, desc = 'Step Out' },
    },
    {
      'n',
      '<F12>',
      function()
        require('dap').toggle_breakpoint()
      end,
      { noremap = true, desc = 'Toggle Breakpoint' },
    },
  },
}

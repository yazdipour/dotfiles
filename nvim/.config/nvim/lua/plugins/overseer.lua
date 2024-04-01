--  overseer [task runner]
--  https://github.com/stevearc/overseer.nvim
return {
  'stevearc/overseer.nvim',
  cmd = {
    'OverseerOpen',
    'OverseerClose',
    'OverseerToggle',
    'OverseerSaveBundle',
    'OverseerLoadBundle',
    'OverseerDeleteBundle',
    'OverseerRunCmd',
    'OverseerRun',
    'OverseerInfo',
    'OverseerBuild',
    'OverseerQuickAction',
    'OverseerTaskAction',
    'OverseerClearCache',
  },
  opts = {
    -- Tasks are disposed 5 minutes after running to free resources.
    -- If you need to close a task immediately:
    -- press ENTER in the output menu on the task you wanna close.
    task_list = { -- this refers to the window that shows the result
      direction = 'bottom',
      min_height = 25,
      max_height = 25,
      default_detail = 1,
    },
    -- component_aliases = { -- uncomment this to disable notifications
    --   -- Components included in default will apply to all tasks
    --   default = {
    --     { "display_duration", detail_level = 2 },
    --     "on_output_summarize",
    --     "on_exit_set_status",
    --     --"on_complete_notify",
    --     "on_complete_dispose",
    --   },
    -- },
  },
}

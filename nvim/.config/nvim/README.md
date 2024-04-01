# .nvim

## Introduction

Based on https://github.com/nvim-lua/kickstart.nvim.git

## Commands

```lua
local cmd = vim.api.nvim_create_user_command
-- Customize this command to work as you like
cmd("TestNodejs", function()
  vim.cmd ":ProjectRoot"                  -- cd the project root (requires project.nvim)
  vim.cmd ":TermExec cmd='npm run tests'" -- convention to run tests on nodejs
  -- You can generate code coverage by add this to your project's packages.json
  -- "tests": "jest --coverage"
end, { desc = "Run all unit tests for the current nodejs project" })

-- Customize this command to work as you like
cmd("TestNodejsE2e", function()
  vim.cmd ":ProjectRoot"                -- cd the project root (requires project.nvim)
  vim.cmd ":TermExec cmd='npm run e2e'" -- Conventional way to call e2e in nodejs (requires ToggleTerm)
end, { desc = "Run e2e tests for the current nodejs project" })


-- Change working directory
cmd("Cwd", function()
  vim.cmd ":cd %:p:h"
  vim.cmd ":pwd"
end, { desc = "cd current file's directory" })

-- Write all buffers
cmd("WriteAllBuffers", function()
  vim.cmd "wa"
end, { desc = "Write all changed buffers" })
```

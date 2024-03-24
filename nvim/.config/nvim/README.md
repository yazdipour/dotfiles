# kickstart.nvim

## Introduction

Based on https://github.com/nvim-lua/kickstart.nvim.git 

### Post Installation

Start Neovim

```sh
nvim
```

That's it! Lazy will install all the plugins you have. Use `:Lazy` to view
current plugin status.

Read through the `init.lua` file in your configuration folder for more
information about extending and exploring Neovim.

### Install plugins

Create a new file in the `lua/custom/plugins` directory with the name of the plugin you want to install. The file should return a table with the plugin name and any additional configuration.

</details>
<details>
  <summary>Adding a file tree plugin</summary>

This will install the tree plugin and add the command `:Neotree` for you. For more information, see the documentation at [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim).

In the file: `lua/custom/plugins/filetree.lua`, add:

```lua
-- File: lua/custom/plugins/filetree.lua

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('neo-tree').setup {}
  end,
}
```

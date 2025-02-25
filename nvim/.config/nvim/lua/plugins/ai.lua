return {
    'github/copilot.vim',
    -- codecompanion: The plugin requires the markdown Tree-sitter parser to be installed with :TSInstall markdown.
    -- default keybindings for codecompanion ai: <leader>ai
    {
        "olimorris/codecompanion.nvim",
        config = true,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        opts = {
          strategies = {
            chat = {
              adapter = "openai",
            },
            inline = {
              adapter = "openai",
            },
          },
        },
    }
}

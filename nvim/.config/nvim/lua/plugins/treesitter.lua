return { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs', -- Sets main module to use for opts
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
    opts = {
        ensure_installed = {
            'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim',
            'yaml', 'json', 'typescript', 'javascript', 'css', 'scss', 'go', 'python', 'ruby', 'java',
            'sql', 'just', 'gitignore', 'cmake', 'java',
            'php', 'graphql', 'dockerfile', 'jsonc', 'tsx', 'vue', 'svelte', 'html', 'vimdoc', 'c_sharp' },
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = { 'ruby' }
        },
        indent = {
            enable = true,
            disable = { 'ruby' }
        }
    },
    -- There are additional nvim-treesitter modules that you can use to interact
    -- with nvim-treesitter. You should go explore a few and see what interests you:
    --
    --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
    --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
    --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
}

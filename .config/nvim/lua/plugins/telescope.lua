return { -- Fuzzy Finder (files, lsp, etc)
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { -- If encountering errors, see telescope-fzf-native README for install instructions
      'nvim-telescope/telescope-fzf-native.nvim',

      -- `build` is used to run some command when the plugin is installed/updated.
      -- This is only run then, not every time Neovim starts up.
      build = 'make',

      -- `cond` is a condition used to determine whether this plugin should be
      -- installed and loaded.
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'nvim-telescope/telescope-file-browser.nvim' },
    -- Useful for getting pretty icons, but requires a Nerd Font.
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    --  :Telescope help_tags
    -- Two important keymaps to use while in telescope are:
    --  - Insert mode: <c-/>
    --  - Normal mode: ?
    --
    -- This opens a window that shows you all of the keymaps for the current
    -- telescope picker. This is really useful to discover what Telescope can
    -- do as well as how to actually do it!

    -- [[ Configure Telescope ]]
    -- See `:help telescope` and `:help telescope.setup()`
    require('telescope').setup {
      defaults = {
        theme = 'center',
        file_ignore_patterns = { '.git/', 'node_modules' },
        layout_config = {
          height = 0.90,
          width = 0.90,
          preview_cutoff = 0,
          horizontal = { preview_width = 0.60 },
          vertical = { width = 0.55, height = 0.9, preview_cutoff = 0 },
          prompt_position = 'top',
        },
        path_display = { 'smart' },
        prompt_position = 'top',
        prompt_prefix = ' ',
        selection_caret = ' ',
        sorting_strategy = 'ascending',
        mappings = {
          i = { ['<c-enter>'] = 'to_fuzzy_refine' },
        },
      },
      pickers = {
        find_files = {
          hidden = true, -- Show hidden files
          ignore = { '.git', 'node_modules', 'vendor' },
          prompt_prefix = ' ',
        },
        colorscheme = {
          enable_preview = true,
        },
        buffers = {
          prompt_prefix = '󰸩 ',
        },
        commands = {
          prompt_prefix = ' ',
          layout_config = {
            height = 0.63,
            width = 0.78,
          },
        },
        command_history = {
          prompt_prefix = ' ',
          layout_config = {
            height = 0.63,
            width = 0.58,
          },
        },
        git_files = {
          prompt_prefix = '󰊢 ',
          show_untracked = true,
        },
        live_grep = {
          prompt_prefix = '󰱽 ',
        },
        grep_string = {
          prompt_prefix = '󰱽 ',
        },
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
        file_browser = {
          -- disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,
        },
        smart_open = {
          cwd_only = true,
          filename_first = true,
        },
      },
    }

    -- Enable telescope extensions, if they are installed
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')
    pcall(require('telescope').load_extension, 'file_browser')

    -- [[ Keymaps ]]
    local set = vim.keymap.set
    -- <C-h> toggle_hidden
    -- <Tab> select files
    -- <S-Tab> de-select files
    -- <backspace> move to parent
    set('n', '<space>fp', ':Telescope file_browser<CR>', { desc = '[F]ile Browser in [P]roject level' })
    set('n', '<leader>fb', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', { desc = '[F]ile [B]rowser in current buffer' })

    -- See `:help telescope.builtin`
    local builtin = require 'telescope.builtin'
    set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
    set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
    set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
    set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
    set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
    set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
    set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
    set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
    set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
    set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

    -- Slightly advanced example of overriding default behavior and theme
    set('n', '<leader>/', function()
      -- You can pass additional configuration to telescope to change theme, layout, etc.
      builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, { desc = '[/] Fuzzily search in current buffer' })

    -- Also possible to pass additional configuration options.
    --  See `:help telescope.builtin.live_grep()` for information about particular keys
    set('n', '<leader>s/', function()
      builtin.live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
      }
    end, { desc = '[S]earch [/] in Open Files' })

    -- Shortcut for searching your neovim configuration files
    set('n', '<leader>sn', function()
      builtin.find_files { cwd = vim.fn.stdpath 'config' }
    end, { desc = '[S]earch [N]eovim files' })
  end,
}

-- vim.opt configuration
vim.opt.virtualedit = 'block'
vim.opt.writebackup = false
vim.opt.shada = "!,'1000,<50,s10,h"
vim.opt.laststatus = 3
vim.opt.linebreak = true
vim.opt.preserveindent = true
vim.opt.pumheight = 10
vim.opt.showtabline = 2
vim.opt.signcolumn = 'yes'
vim.opt.smartindent = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 2

vim.opt.colorcolumn = '80'
vim.opt.autochdir = true
vim.opt.swapfile = false

-- big file settings
vim.g.big_file = { size = 1024 * 100, lines = 10000 }

-- feature toggles
vim.g.autoformat_enabled = false
vim.g.autopairs_enabled = false
vim.g.cmp_enabled = true
vim.g.codelens_enabled = true
vim.g.diagnostics_mode = 3
vim.g.icons_enabled = true
vim.g.inlay_hints_enabled = false
vim.g.lsp_round_borders_enabled = true
vim.g.lsp_signature_enabled = true
vim.g.notifications_enabled = true
vim.g.semantic_tokens_enabled = true
vim.g.url_effect_enabled = true

-- -- code fold with nvim-ufo
-- vim.opt.foldenable = true -- Enable fold for nvim-ufo.
-- vim.opt.foldlevel = 99 -- set highest foldlevel for nvim-ufo.
-- vim.opt.foldlevelstart = 99 -- Start with all code unfolded.
-- vim.opt.foldcolumn = '1' -- Show foldcolumn in nvim 0.9+.

-- MOUSE
-- Disable right-click popup and copy text instead
vim.opt.mousemodel = ''
vim.keymap.set('n', '<RightMouse>', '"+y', { desc = 'Copy text on right-click' })
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = false })

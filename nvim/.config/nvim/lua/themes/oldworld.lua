if true then
  return {}
end
return {
    "dgox16/oldworld.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    init = function()
      vim.cmd.colorscheme 'oldworld'
    end,
}

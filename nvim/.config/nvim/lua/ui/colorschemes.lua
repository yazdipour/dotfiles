return {
    {
        "Shatur/neovim-ayu",
        lazy = false,
        priority = 1000,
        config = function()
            require('ayu').setup({
                mirage = false,
                overrides = {},
            })
            vim.cmd.colorscheme 'ayu'
        end,
    },
    { "dgox16/oldworld.nvim", lazy = true },
    { "tanvirtin/monokai.nvim", lazy = true },
    { "navarasu/onedark.nvim", lazy = true },
    { "adisen99/codeschool.nvim", lazy = true },
    { "projekt0n/github-nvim-theme", lazy = true },
    { "kdheepak/monochrome.nvim", lazy = true },
    { "EdenEast/nightfox.nvim", lazy = true },
    { "olimorris/onedarkpro.nvim", lazy = true },
    { "rmehri01/onenord.nvim", lazy = true },
    { "cpea2506/one_monokai.nvim", lazy = true },
    { "Yazeed1s/minimal.nvim", lazy = true },
    { "polirritmico/monokai-nightasty.nvim", lazy = true },
    { "oxfist/night-owl.nvim", lazy = true },
    { "diegoulloao/neofusion.nvim", lazy = true },
}

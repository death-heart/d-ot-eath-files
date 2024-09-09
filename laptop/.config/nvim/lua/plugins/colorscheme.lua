return {
    {
        "folke/tokyonight.nvim",
        lazy = false, 
        priority = 1000, 
        config = function()
            require("tokyonight").setup({
                transparent = true,
                style = "day",
                styles = {
                    sidebars = "transparent",
                    floats = "transparent",
                }
            })
            -- vim.cmd([[colorscheme tokyonight]])
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        prority = 1000,
        config = function()
            require("gruvbox").setup({
                transparent_mode = true
            })
            vim.cmd([[colorscheme gruvbox]])
        end
    }
}

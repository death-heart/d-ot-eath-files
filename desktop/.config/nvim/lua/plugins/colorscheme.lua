return {
    -- the colorscheme should be available when starting Neovim
    {
        "folke/tokyonight.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require("tokyonight").setup({
                transparent = true,
                styles = {
                    sidebars = "transparent",
                    floats = "transparent",
                }
            })
            -- load the colorscheme here
            vim.cmd([[colorscheme tokyonight]])
        end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
            })
            -- vim.cmd([[colorscheme rose-pine]])
        end
    }
}

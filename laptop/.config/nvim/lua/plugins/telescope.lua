return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({
            pickers = {
                find_files = {
                    hidden = true
                }
            }
        })

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>wf', builtin.find_files, {})
        vim.keymap.set('n', '<C-g>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>ww', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
    end
}

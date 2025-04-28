return { 
    'nvim-telescope/telescope.nvim', 
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup({})
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>af', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>sf', builtin.git_files, { desc = 'Telescope find in git files' })
        vim.keymap.set('n', '<leader>sw', function()
            builtin.grep_string({search = vim.fn.input("Grep > ")})
        end)
    end
}

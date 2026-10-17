local gh = require('utils').gh

vim.pack.add({
    gh 'nvim-telescope/telescope.nvim',
    -- dependencies
    gh 'nvim-lua/plenary.nvim',
    ---- optional but recommended
    gh 'nvim-telescope/telescope-fzf-native.nvim'
})

require('telescope').setup({})

-- Keymaps for Fuzzy Finder
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

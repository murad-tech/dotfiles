vim.pack.add({
    'https://github.com/akinsho/bufferline.nvim',
    -- dependencies
    'https://github.com/nvim-tree/nvim-web-devicons'
})

require('bufferline').setup()

-- Keymaps for buffer navigation
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { desc = 'Next buffer', silent = true })
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { desc = 'Previous buffer', silent = true })
vim.keymap.set('n', '<leader>bp', ':BufferLinePick<CR>', { desc = 'Pick buffer', silent = true })
vim.keymap.set('n', '<leader>bc', ':BufferLinePickClose<CR>', { desc = 'Pick buffer to close', silent = true })
vim.keymap.set('n', '<leader>bse', ':BufferLineSortByExtension<CR>', { desc = 'Sort by extension', silent = true })
vim.keymap.set('n', '<leader>bsd', ':BufferLineSortByDirectory<CR>', { desc = 'Sort by directory', silent = true })
vim.keymap.set('n', '<leader>bh', ':BufferLineCloseLeft<CR>', { desc = 'Close all to the left', silent = true })
vim.keymap.set('n', '<leader>bl', ':BufferLineCloseRight<CR>', { desc = 'Close all to the right', silent = true })
vim.keymap.set('n', '<leader>bd', function()
  local bufnr = vim.api.nvim_get_current_buf()
  vim.cmd 'BufferLineCyclePrev'
  vim.cmd('bdelete! ' .. bufnr)
end, { desc = 'Delete current buffer', silent = true })

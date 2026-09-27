vim.pack.add({
    'https://github.com/akinsho/bufferline.nvim',
    -- dependencies
    'https://github.com/nvim-tree/nvim-web-devicons'
})

local function close_buffer()
  local bufnr = vim.api.nvim_get_current_buf()
  vim.cmd 'BufferLineCyclePrev'
  vim.cmd('bdelete! ' .. bufnr)
end

require('bufferline').setup({
    options = {
        mode = 'buffers', -- set to "tabs" to only show tabpages instead
        style_preset = require('bufferline').style_preset.default,
        themable = true,
        numbers = 'none', -- can be "none" | "ordinal" | "buffer_id" | "both"
        close_command = close_buffer,  -- can be a string | function, see "Mouse actions"
        middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
        indicator = {
          icon = '▎', -- this should be omitted if indicator style is not 'icon'
          style = 'icon', -- can also be 'underline'|'none'
        },
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'File Explorer',
            text_align = 'center', -- | "center" | "right"
            separator = true,
          },
        },
        color_icons = true, -- whether or not to add the filetype icon highlights
        show_buffer_icons = true, -- disable filetype icons for buffers
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        show_duplicate_prefix = true, -- whether to show duplicate buffer prefix
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        separator_style = 'thin', -- | "slope" | "thick" | "thin" | { 'any', 'any' },
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        hover = {
          enabled = true,
          delay = 200,
          reveal = { 'close' },
        },
        sort_by = 'insert_after_current', -- | 'insert_at_end' | 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs'
    }
})

-- Keymaps for buffer navigation
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { desc = 'Next buffer', silent = true })
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { desc = 'Previous buffer', silent = true })
vim.keymap.set('n', '<leader>bp', ':BufferLinePick<CR>', { desc = 'Pick buffer', silent = true })
vim.keymap.set('n', '<leader>bc', ':BufferLinePickClose<CR>', { desc = 'Pick buffer to close', silent = true })
vim.keymap.set('n', '<leader>bse', ':BufferLineSortByExtension<CR>', { desc = 'Sort by extension', silent = true })
vim.keymap.set('n', '<leader>bsd', ':BufferLineSortByDirectory<CR>', { desc = 'Sort by directory', silent = true })
vim.keymap.set('n', '<leader>bh', ':BufferLineCloseLeft<CR>', { desc = 'Close all to the left', silent = true })
vim.keymap.set('n', '<leader>bl', ':BufferLineCloseRight<CR>', { desc = 'Close all to the right', silent = true })
vim.keymap.set('n', '<leader>bd', close_buffer, { desc = 'Delete current buffer', silent = true })


-- leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- open file explorer
vim.keymap.set('n', '<leader>e', 
    function()
        -- try to require neo-tree
        local success, _ = pcall(require, "neo-tree")

        if success then
            -- if available open neo-tree
            vim.cmd("Neotree toggle")
        else
            -- else open default netrw
            vim.cmd("Explore")
        end
    end
)

-- remap navigation between windows
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- convenient commons
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

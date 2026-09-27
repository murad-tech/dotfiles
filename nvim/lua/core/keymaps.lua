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



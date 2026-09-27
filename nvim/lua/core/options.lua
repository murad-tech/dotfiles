vim.opt.number = true               -- line numbers
vim.opt.relativenumber = true       -- relative line numbers

vim.opt.wrap = false                -- long lines as one line (no-newline)
vim.opt.linebreak = true            -- don't split words
vim.opt.scrolloff = 6               -- n lines above or below during scroll
vim.opt.sidescrolloff = 8           -- n columns right or left during line scroll
vim.opt.cursorline = true           -- highlight cursor line

vim.opt.autoindent = true           -- start new line indented
vim.opt.expandtab = true            -- tabs -> spaces
vim.opt.shiftwidth = 4              -- n space for each indent
vim.opt.tabstop = 4                 -- stop tab after n spaces
vim.opt.softtabstop = 4             -- n spaces on Tab or Backspace
vim.opt.smartindent = true          -- make indent smarter

vim.opt.ignorecase = true           -- search ignore case
vim.opt.smartcase = true            -- search ignore case unless Capital letter in query

vim.opt.showtabline = 2             -- show window tabs ^
vim.opt.fileencoding = 'utf-8'      -- set file encoding
vim.opt.undofile = true             -- creates undo history

vim.opt.clipboard = 'unnamedplus'   -- sync OS clipboard with vim

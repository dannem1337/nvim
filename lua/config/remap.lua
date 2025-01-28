vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
vim.keymap.set('n', '<A-w><A-v>', vim.cmd.vsplit)
vim.keymap.set('n', '<A-w><A-w>', '<C-w><C-w>', { noremap = true })
local bufopts = { noremap = true, silent = true, buffer = bufnr }
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, bufopts)

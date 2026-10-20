vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
vim.keymap.set('n', '<leader>gm', [[/\v^\<\<\<\<\<\<\< \|\=\=\=\=\=\=\=$\|\>\>\>\>\>\>\> /<cr>]], { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<cmd>cnext<CR>', { desc = 'Next quickfix item' })
vim.keymap.set('n', '<C-k>', '<cmd>cprev<CR>', { desc = 'Previous quickfix item' })
-- vim.keymap.set('n', '<A-w><A-v>', vim.cmd.vsplit)
-- vim.keymap.set('n', '<A-w><A-w>', '<C-w><C-w>', { noremap = true })
local bufopts = { noremap = true, silent = true, buffer = bufnr }
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, bufopts)

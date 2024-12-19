-- Keymap from The Primeagen to move lines while in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Keymap from TJDevries in the Configure Neovim's Options video at 1:16
-- for executing current line and sourcing file (for nv config)
vim.keymap.set('n', '<leader>+', '<cmd>source %<CR>', { desc = 'Execute the current file' })
vim.keymap.set('n', '<leader>*', ':.lua<CR>', { desc = 'Execute the current line' })
vim.keymap.set('v', '<leader>*', ':lua<CR>')

-- Floaterminal (see plugin/Floaterminal)

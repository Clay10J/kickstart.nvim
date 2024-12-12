-- Keymap from The Primeagen to move lines while in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Keymap from TJDevries in the Configure Neovim's Options video at 1:16
-- for executing current line and sourcing file (for nv config)
vim.keymap.set('n', '<space>-', '<cmd>source %<CR>')
vim.keymap.set('n', '<space>*', ':.lua<CR>')
vim.keymap.set('v', '<space>*', ':lua<CR>')

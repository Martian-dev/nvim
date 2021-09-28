local map = vim.api.nvim_set_keymap

-- Use alt + hjkl to resize windows
map('n', '<M-j>', ':resize -2<CR>', {noremap = true})
map('n', '<M-k>', ':resize +2<CR>', {noremap = true})
map('n', '<M-h>', ':vertical resize -2<CR>', {noremap = true})
map('n', '<M-l>', ':vertical resize +2<CR>', {noremap = true})

-- Better windows navigation
map('n', '<C-h>', '<C-w>h', {noremap = true})
map('n', '<C-j>', '<C-w>j', {noremap = true})
map('n', '<C-k>', '<C-w>k', {noremap = true})
map('n', '<C-l>', '<C-w>l', {noremap = true})

-- Keybindings to close windows and buffer
map('n', '<leader>q', ':q<CR>', {noremap = true}) -- Quit
map('n', '<leader>c', ':bd<CR>', {noremap = true}) -- Close a buffer

map('n', '<leader>w', ':w<CR>', {noremap = true}) -- Save the open buffer

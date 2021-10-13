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
map('i', '<C-S>', '<Esc>:w<CR>', {noremap = true}) -- Save the open buffer while in insert mode

-- Selecting the whole file
vim.api.nvim_set_keymap("n", "<C-A>", "ggVG", { noremap = true }) -- Selecting the whole file in normal mode
vim.api.nvim_set_keymap("i", "<C-A>", "<Esc> ggVG", { noremap = true }) -- Selecting the whole file in insert mode

-- Telescope keybindings
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', {noremap = true})
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', {noremap = true})
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', {noremap = true})
map('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', {noremap = true})

-- Navigating between buffers
map('n', '<S-l>', ':bnext<CR>', { noremap = true })
map('n', '<S-h>', ':bprevious<CR>', { noremap = true })

-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> ("\\<C-n>")')
vim.cmd('inoremap <expr> <c-k> ("\\<C-p>")')

-- I Sometimes Type Q and W instead of q or w, so make things easier for me
vim.cmd('command W :w')
vim.cmd('command Q :q')

-- Use control-[ instead of escape
map('n', '<C-[', '<Esc>', { noremap = true })
map('i', 'kj', '<Esc>', { noremap = true })
map('i', 'jk', '<Esc>', { noremap = true })

-- Better tabbing
map('v', '<', '<gv', { noremap = true })
map('v', '>', '>gv', { noremap = true })

map('n', '<leader>o', 'o<Esc>^Da', { noremap = true })
map('n', '<leader>O', 'O<Esc>^Da', { noremap = true })

-- NvimTree
map('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true })

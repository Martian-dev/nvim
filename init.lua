-- Set leader key
vim.g.mapleader = " "

-- Importing Configs
require('settings')
require('mappings')
vim.cmd("source $HOME/.config/nvim/vim-plug/plugins.vim")
require('theme')
vim.cmd("source $HOME/.config/nvim/plug-config/fzf.vim")
vim.cmd("source $HOME/.config/nvim/plug-config/emmet.vim")
require('treesitter-config')
require('configs/blankline')
require('configs/bufferline')
require('configs/lualine')

-- Native LSP
require'lspconfig'.pyright.setup{}

require'nvim-tree'.setup()

vim.g.dashboard_default_executive = 'telescope'

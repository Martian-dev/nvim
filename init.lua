-- Set leader key
vim.g.mapleader = " "

-- Importing Configs
require('settings')
require('mappings')
require('plugins')
require('theme')
-- vim.cmd("source $HOME/.config/nvim/plug-config/emmet.vim")

-- Native LSP
-- require'lspconfig'.pyright.setup{}

-- require'nvim-tree'.setup()


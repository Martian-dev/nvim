-- Set leader key
vim.g.mapleader = " "

-- Importing Configs
-- vim.cmd("source $HOME/.config/nvim/general/settings.vim")
require('settings')
require('mappings')
vim.cmd("source $HOME/.config/nvim/vim-plug/plugins.vim")
vim.cmd("source $HOME/.config/nvim/keys/mappings.vim")
vim.cmd("source $HOME/.config/nvim/themes/onedark.vim")
vim.cmd("source $HOME/.config/nvim/themes/airline.vim")
vim.cmd("source $HOME/.config/nvim/plug-config/fzf.vim")
vim.cmd("source $HOME/.config/nvim/plug-config/emmet.vim")
require('treesitter-config')
-- vim.cmd("source $HOME/.config/nvim/plug-config/coc.vim")

-- Native LSP
require'lspconfig'.pyright.setup{}

-- Bufferline :wink:
require"bufferline".setup{}

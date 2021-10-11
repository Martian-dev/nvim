-- Set leader key
vim.g.mapleader = " "

-- Importing Configs
-- vim.cmd("source $HOME/.config/nvim/general/settings.vim")
require('settings')
require('mappings')
-- require('theme')
vim.cmd("source $HOME/.config/nvim/vim-plug/plugins.vim")
-- vim.cmd("source $HOME/.config/nvim/keys/mappings.vim")
-- vim.cmd("source $HOME/.config/nvim/themes/onedark.vim")
vim.cmd("source $HOME/.config/nvim/themes/airline.vim")
vim.cmd("source $HOME/.config/nvim/plug-config/fzf.vim")
vim.cmd("source $HOME/.config/nvim/plug-config/emmet.vim")
require('treesitter-config')
-- vim.cmd("source $HOME/.config/nvim/plug-config/coc.vim")

-- Native LSP
require'lspconfig'.pyright.setup{}

-- Bufferline :wink:
require"bufferline".setup{}

vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
-- vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer", "NERDTree"}
vim.g.tokyonight_dark_sidebar = false
vim.g.tokyonight_dark_float = false

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

vim.cmd("colorscheme tokyonight")


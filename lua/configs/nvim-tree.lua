local map = vim.api.nvim_set_keymap
vim.g.nvim_tree_ignore = { ".git", "node_modules", ".cache", "__pycache__" }
require('nvim-tree').setup {
  auto_close = 1,
  auto_open = 0,
}

vim.g.nvim_tree_width = 32
vim.g.nvim_tree_gitignore = 0
vim.g.nvim_tree_quit_on_open = 0
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_root_folder_modifier = ":~"
vim.g.nvim_tree_tab_open = 1
vim.g.nvim_tree_auto_resize = 1
vim.g.nvim_tree_disable_netrw = 0
vim.g.nvim_tree_hijack_netrw = 0
vim.g.nvim_tree_group_empty = 1
vim.g.nvim_tree_lsp_diagnostics = 1
vim.g.nvim_tree_disable_window_picker = 1
vim.g.nvim_tree_hijack_cursor = 1
vim.g.nvim_tree_icon_padding = " "
vim.g.nvim_tree_update_cwd = 1

vim.g.nvim_tree_special_files = {
	["README.md"] = 1,
	["Makefile"] = 1,
	["MAKEFILE"] = 1,
}

vim.g.nvim_tree_show_icons = {
	["git"] = 0,
	["folders"] = 1,
	["files"] = 1,
	["folder_arrows"] = 1,
}

vim.g.nvim_tree_icons = {
	["default"] = "",
	["symlink"] = "",
	["folder"] = {
    ["arrow_open"] = "",
    ["arrow_close"] = "",
		["default"] = "",
		["open"] = "",
		["empty"] = "",
		["empty_open"] = "",
		["symlink"] = "",
		["symlink_open"] = "",
	},
	["lsp"] = {
		["hint"] = "",
		["info"] = "",
		["warning"] = "",
		["error"] = "",
	},
	["git"] = {
		["unstaged"] = "★",
		["staged"] = "✓",
		["unmerged"] = "",
		["renamed"] = "➜",
		["untracked"] = "★",
		["deleted"] = "",
		["ignored"] = "◌",
	},
}

vim.opt.termguicolors = true -- this variable must be enabled for colors to be applied properly
map('n', '<S-r>', ':NvimTreeRefresh<CR>', { noremap = true })

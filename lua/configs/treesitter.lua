require("nvim-treesitter.configs").setup({
	ensure_installed = require("configs/treesitter-parsers").parsers,
	ignore_install = {},
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
  autotag = {
      enable = true,
  },
  refactor = {
    highlight_definitions = { enable = true },
  },
})

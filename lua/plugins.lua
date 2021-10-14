local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup({function(use)
  -- package manager
  use "wbthomason/packer.nvim"

  use {
    "lewis6991/impatient.nvim",
    opt = true,
    config = function()
      require "impatient"
      require("impatient").enable_profile()
    end,
  }

  -- create directories if they don't exist
  use {
    "jghauser/mkdir.nvim",
    config = function()
      require "mkdir"
    end,
    event = "BufWritePre",
  }

  use {
    "kyazdani42/nvim-tree.lua",
    require = 'kyazdani42/nvim-web-devicons',
    config = function()
      require "configs.nvim-tree"
    end,
  }

  use "jiangmiao/auto-pairs"

  -- statusline
  use {
    "hoob3rt/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons" },
    config = function()
      require "configs.lualine"
    end,
  }

  -- a file explorer
  use {
    "nvim-telescope/telescope.nvim",
    opt = true,
    cmd = "Telescope",
    after = "impatient.nvim",
    event = "BufRead",
    requires = {
      { "nvim-lua/popup.nvim" },
      { "nvim-lua/plenary.nvim" },
      { "kyazdani42/nvim-web-devicons" },
      { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
      { "nvim-telescope/telescope-symbols.nvim" },
      { "jvgrootveld/telescope-zoxide" },
      { "nvim-telescope/telescope-frecency.nvim" },
      { "benfowler/telescope-luasnip.nvim" },
      { "tami5/sqlite.lua" },
      -- { "nvim-telescope/telescope-packer.nvim" }, -- breaks packer
    },
    config = function()
      require "configs.telescope"
    end,
  }

  -- parsers for code
  use {
    "nvim-treesitter/nvim-treesitter",
    after = "impatient.nvim",
    opt = true,
    run = ":TSUpdate",
    event = "BufRead",
    config = function()
      require "configs.treesitter"
    end,
  }

  -- bufferline
  use {
    "akinsho/bufferline.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require "configs.bufferline"
    end,
  }

  -- Git from Vim
  use { "tpope/vim-fugitive", cmd = "G" }
  use "tpope/vim-rhubarb"

  use {
    "lukas-reineke/indent-blankline.nvim",
    setup = function()
      require("configs.blankline").setup()
    end,
  }

 -- list for lsp,quickfix,telescope etc
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    cmd = { "Trouble", "TroubleToggle" },
    config = function()
      require("trouble").setup {
        auto_preview = false,
      }
    end,
  }

  use {
    "folke/tokyonight.nvim",
    config = function()
      require "theme"
    end,
  }

  use "glepnir/dashboard-nvim"


  if packer_bootstrap then
    require('packer').sync()
  end
end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})


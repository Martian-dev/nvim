local opt = vim.opt
local g = vim.g

opt.syntax = "enable"
opt.hidden = true
opt.wrap = false
opt.encoding = 'utf-8'
opt.scrolloff = 5 -- start scrolling 5 lines away from top/bottom
opt.pumheight = 10
opt.pumblend = 18
opt.fileencoding = 'utf-8'
opt.ruler = true
opt.cmdheight = 1 -- height of cmd line
opt.virtualedit = 'block'
opt.iskeyword:append '-'
opt.mouse = 'a'
opt.ignorecase = true
opt.smartcase = true
opt.splitbelow = true
opt.splitright = true
opt.conceallevel = 2
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.breakindent = true
opt.showbreak = string.rep(" ", 3)
opt.laststatus = 2
opt.number = true
opt.cursorline = true -- highlight current line
opt.background = 'dark' -- Dark background
opt.showtabline = 2
opt.showmode = false
opt.updatetime = 300 -- Update cursorHold and save swap every 2000ms
opt.timeoutlen = 200 -- time between keystrokes of mappings
opt.compatible = false
opt.formatoptions:remove { "c", "r", "o" }
opt.clipboard = 'unnamedplus'

opt.foldlevel = 0
opt.joinspaces = false
opt.completeopt = "menuone,noselect"
opt.signcolumn = "yes:1" -- always signcolumn, 1 wide
opt.termguicolors = true

opt.list = true -- show some hidden characters
opt.listchars = {
  tab = "> ",
  nbsp = "␣",
  trail = "•",
}

-- opt.foldmethod = "indent" -- use treesitter for folding
-- opt.foldexpr = "nvim_treesitter#foldexpr()"

opt.undodir = vim.fn.expand "~" .. "/.vim/undodir" --directory to save undofiles
opt.undofile = true

opt.fillchars = { eob = " " } -- no fillchars at end of buffer
-- builtin plugins

g.loaded_gzip = 1
g.loaded_zip = 1
g.loaded_zipPlugin = 1
g.loaded_tar = 1
g.loaded_tarPlugin = 1
g.loaded_matchit = 1
g.loaded_man = 1
g.loaded_remote_plugins = 1

g.loaded_getscript = 1
g.loaded_getscriptPlugin = 1
g.loaded_vimball = 1
g.loaded_vimballPlugin = 1
g.loaded_2html_plugin = 1

g.loaded_logiPat = 1
g.loaded_rrhelper = 1

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.loaded_netrwSettings = 1
g.loaded_netrwFileHandlers = 1

-- auto source when writing to init.vim alternatively you can run :source $MYVIMRC
vim.cmd("au! BufWritePost $MYVIMRC source %")

-- You can't stop me, overriding read only file
vim.cmd("cmap w!! w !sudo tee %")

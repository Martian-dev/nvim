local opt = vim.opt

opt.syntax = "enable"
opt.hidden = true
opt.wrap = false
opt.encoding = 'utf-8'
opt.pumheight = 10
opt.fileencoding = 'utf-8'
opt.ruler = true
opt.cmdheight = 2
opt.iskeyword:append '-'
opt.mouse = 'a'
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.conceallevel = 2
opt.tabstop = 4
opt.shiftwidth = 2
opt.smarttab = true
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.laststatus = 0
opt.number = true
opt.cursorline = true
opt.background = 'dark'
opt.showtabline = 2
opt.showmode = false
opt.updatetime = 300
opt.timeoutlen = 150
opt.formatoptions:remove 'cro'
opt.clipboard = 'unnamedplus'

-- auto source when writing to init.vim alternatively you can run :source $MYVIMRC
vim.cmd("au! BufWritePost $MYVIMRC source %")

-- You can't stop me, overriding read only file
vim.cmd("cmap w!! w !sudo tee %")

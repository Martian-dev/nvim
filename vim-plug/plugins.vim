" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Customizations for the File-Explorer (NERDTree)
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'joshdick/onedark.vim'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'LunarVim/onedarker.nvim'
    " Intellisense
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Nvim Native LSP
    Plug 'neovim/nvim-lspconfig'
    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Fuzzy Finder (fzf)
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter' 
    " Git Integration (vim-fugitive)
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    " HTML & CSS Support (emmet)
    Plug 'mattn/emmet-vim'
    " Telescope (Fuzzy Finder)
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    " Nvim-Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
    " BufferLine
    Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
    " Plug 'ryanoasis/vim-devicons' Icons without colours
    Plug 'akinsho/bufferline.nvim'


call plug#end()


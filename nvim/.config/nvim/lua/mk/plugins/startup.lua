return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'HerringtonDarkholme/yats.vim'
  use 'aklt/plantuml-syntax'
  use 'chriskempson/base16-vim'
  use 'christoomey/vim-tmux-navigator'
  use 'dag/vim-fish'
  use 'dense-analysis/ale'
  use 'derekwyatt/vim-scala'
  use 'editorconfig/editorconfig-vim'
  use 'fatih/vim-go'
  use {'junegunn/fzf', dir = '~/.fzf', run = './install --all'}
  use 'junegunn/fzf.vim'
  use 'junegunn/gv.vim'
  use 'junegunn/vim-easy-align'
  use 'kubejm/jest.nvim'
  use 'mattn/emmet-vim'
  use 'maxmellon/vim-jsx-pretty'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use 'nvim-lua/diagnostic-nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/telescope.nvim'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'pangloss/vim-javascript'
  use 'prettier/vim-prettier'
  use 'scrooloose/nerdcommenter'
  use 'scrooloose/nerdtree'
  use 'scrooloose/vim-slumlord'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-sensible'
  use 'tpope/vim-surround'
  use 'vimwiki/vimwiki'
  use 'yuezk/vim-js'
  use 'hoob3rt/lualine.nvim'
end)

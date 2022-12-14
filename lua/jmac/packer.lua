-- Only required if you have packer configured as `opt`

 

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  --theame
  use { "ellisonleao/gruvbox.nvim" }
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
}
-- ripgrep
use {
  "rinx/nvim-ripgrep",
  config = function()
    require("nvim-ripgrep").setup {
        -- your configurations here
    }
  end
  }
  -- navigate splits and tmux with C-hjkl
  use 'christoomey/vim-tmux-navigator'
  use 'tpope/vim-surround'
  -- Cmp LSP provider

use "williamboman/nvim-lsp-installer"
use 'neovim/nvim-lspconfig'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
-- snipets
use 'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'
use "rafamadriz/friendly-snippets"
-----------------------------
-- --- tree sitter
use "nvim-treesitter/nvim-treesitter"
-- fugitive Git intergration 
use 'tpope/vim-fugitive'
-- Prettier/formatter 
use 'sbdchd/neoformat'
-- commenter 
use "terrortylor/nvim-comment"

use {
  'nvim-tree/nvim-tree.lua',
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
use 'nvim-tree/nvim-web-devicons'
-- lualine
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

end

)	

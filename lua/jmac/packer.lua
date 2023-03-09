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

-- lsp list component 
use {
  "folke/trouble.nvim",
  requires = "nvim-tree/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
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

-- Tabnine
use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}

--use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }
use{'rhysd/vim-grammarous'}
end

)	

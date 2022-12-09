-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- auto install Packer if not  installed 
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
 

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  --theame
  use { "ellisonleao/gruvbox.nvim" }
--telescope
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

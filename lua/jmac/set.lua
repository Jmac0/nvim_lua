


vim.g.mapleader = " "
-- spelling on 
vim.opt.spell = true
vim.g.guifont=12
vim.opt.number = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.g.directory = ''
-- highlight current line
vim.opt.cursorline = true
vim.g.noswapfile = true
-- Tabs and spaces
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

-- scroll offset  
vim.opt.scrolloff = 10

--  path to ctags file
vim.opt.tags='./tags'

-- line wrapping 
vim.opt.wrap = false

-- Appearance 
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"
-- Search settings  
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.incsearch = true

-- Add chars that vim will select as a whole word
vim.opt.iskeyword:append({'-'})
-- Clipboard
 vim.opt.clipboard:append("unnamedplus")
